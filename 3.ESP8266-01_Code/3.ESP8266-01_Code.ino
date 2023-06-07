#include <ESP8266WiFi.h>
#include <NTPClient.h>
#include <WiFiUdp.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClientSecureBearSSL.h>

const char *ssid = "aaaaaaaa";     // XXX: Your WiFi ssid
const char *password = "bbbbbbbb"; // XXX: Your password

const char *api = "https://api.bilibili.com/x/relation/stat?vmid=356383684";

std::unique_ptr<BearSSL::WiFiClientSecure> client(new BearSSL::WiFiClientSecure);
HTTPClient https;

WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, "ntp.ntsc.ac.cn", 28800);

void setup()
{
    pinMode(LED_BUILTIN, OUTPUT);
    Serial.begin(9600);

    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid, password);

    timeClient.begin();

    client->setInsecure(); // Ignore SSL certificate validation
}

void loop()
{
    while (WiFi.status() != WL_CONNECTED)
    {
        digitalWrite(LED_BUILTIN, LOW);
        delay(200);
        digitalWrite(LED_BUILTIN, HIGH);
        delay(300);
    }
    analogWrite(LED_BUILTIN, 0);

    while (!https.begin(*client, api) && (WiFi.status() == WL_CONNECTED))
    {
        delay(1000);
        Serial.println("[HTTPS] Connect failed.");
    }

    // start connection and send HTTP header
    int httpCode = https.GET();
    // httpCode will be negative on error
    if (httpCode > 0)
    {
        // file found at server
        if (httpCode == HTTP_CODE_OK || httpCode == HTTP_CODE_MOVED_PERMANENTLY)
        {
            String recv = https.getString();
            int C = recv.indexOf("follower") + 10;
            int D = recv.indexOf("}", C);
            String follower = recv.substring(C, D);

            timeClient.update();
            unsigned long epochTime = timeClient.getEpochTime();
            struct tm *ptm = gmtime((time_t *)&epochTime);
            int YY = ptm->tm_year + 1900;
            int MM = ptm->tm_mon + 1;
            int DD = ptm->tm_mday;
            String hhmm = timeClient.getFormattedTime();
            char date[30];
            sprintf(date, "%04d-%02d-%02d ", YY, MM, DD);
            String Date = String(date) + hhmm + String(" UTC+8");

            if (follower.toInt() > 0)
            {
                String output = follower + "," + Date;
                Serial.println(output);
            }
            else
            {
                Serial.println("[Decoder]Error : content of <Follower>:\n"+follower);
            }
        }
    }
    else
    {
        Serial.printf("[HTTPS] GET... failed, error: %s\n", https.errorToString(httpCode).c_str());
    }

    for (int i = 0; i < 500; i++)
    {
        double val = (-0.016368) * i * i + 8.184 * i;
        analogWrite(LED_BUILTIN, int(val));
        delay(10);
    }
}
