#include <ESP8266WiFi.h>
#include <NTPClient.h>
#include <WiFiUdp.h>

const char *ssid = "aaaaaaaa";     // XXX: Your WiFi ssid
const char *password = "bbbbbbbb"; // XXX: Your password

const char *host = "api.bilibili.com";
const int httpPort = 80;

WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, "ntp.ntsc.ac.cn", 28800);

void setup()
{
    pinMode(LED_BUILTIN, OUTPUT);
    Serial.begin(9600);

    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid, password);

    timeClient.begin();
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

    WiFiClient client;

    while ((!client.connect(host, httpPort)) && (WiFi.status() == WL_CONNECTED))
    {
        delay(1000);
    }

    // XXX:                                 ↓ Can be changed to your bilibili uid
    client.print("GET /x/relation/stat?vmid=356383684 HTTP/1.1\r\n"
                 "Host: api.bilibili.com\r\n\r\n");

    while ((client.connected()) && (WiFi.status() == WL_CONNECTED))
    {
        String recv = client.readStringUntil('}') + String("}}");

        // int A = recv.indexOf(",") + 2;
        // int B = recv.indexOf("\n", A);
        // String Date = recv.substring(A, B);
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

        int C = recv.indexOf("follower") + 10;
        int D = recv.indexOf("}", C);
        String follower = recv.substring(C, D);

        if (follower.toInt() > 0)
        {
            String output = follower + "," + Date;
            Serial.println(output);
        }
        else
        {
            Serial.println("FAIL.");
        }
        break;
    }

    for (int i = 0; i < 500; i++)
    {
        double val = (-0.016368) * i * i + 8.184 * i;
        analogWrite(LED_BUILTIN, int(val));
        delay(10);
    }
}
