#include <ESP8266WiFi.h>

const char *ssid = "aaaaaaaa";     // XXX: Your WiFi ssid
const char *password = "bbbbbbbb"; // XXX: Your password

const char *host = "api.bilibili.com";
const int httpPort = 80;

void setup()
{
    pinMode(LED_BUILTIN, OUTPUT);
    Serial.begin(9600);

    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid, password);
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

    // XXX:                                 ↓ Your bilibili uid
    client.print("GET /x/relation/stat?vmid=356383684 HTTP/1.1\r\n"
                 "Host: api.bilibili.com\r\n\r\n");

    while ((client.connected()) && (WiFi.status() == WL_CONNECTED))
    {
        String recv = client.readStringUntil('}') + String("}}");

        int A = recv.indexOf(",") + 2;
        int B = recv.indexOf("\n", A);
        String Date = recv.substring(A, B);

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
