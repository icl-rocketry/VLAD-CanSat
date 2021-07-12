#include "WiFiInterface.h"
#include "commands.h"
#include "radio.h"

#include <WiFi.h> // Load Wi-Fi library

WiFiInterface::WiFiInterface(radio* RadioGCS) {
    _RadioGCS = RadioGCS;
}

void WiFiInterface::setupWIFI(){
    WiFiServer server(80); // Set web server port number to 80
    
    Serial.print("Setting AP..."); // Set up AP Mode
    WiFi.softAP(ssid, password);

    Serial.println("AP IP address: "); // Print local IP address and start web server
    Serial.println(WiFi.softAPIP());
    server.begin();
}

void WiFiInterface::WIFIloop()
{
    WiFiClient client = server.available();
    // Start connection
    if (client)
    {
        Serial.println("New client.");
        String currentLine = "";

        while (client.connected())
        {
            if (client.available())
            {
                char c = client.read();
                Serial.print(c);
                header += c;

                if (c == '\n')
                {
                    // Send HTTP response
                    if (currentLine.length() == 0)
                    {
                        // HTTP headers always start with a response code (e.g. HTTP/1.1 200 OK)
                        // and a content-type so the client knows what's coming, then a blank line:
                        client.println("HTTP/1.1 200 OK");
                        client.println("Content-type:text/html");
                        client.println("Connection: close");
                        client.println();

                        client.println("<p><a href=\"192.168.1.1/fire_spike/on\"><button class=\"button\">ON</button></a></p>");
                        client.println("<p><a href=\"192.168.1.1/arm_spike/on\"><button class=\"button\">ON</button></a></p>");
                        client.println("<p><a href=\"192.168.1.1/send_telemetry/on\"><button class=\"button\">ON</button></a></p>");

                        if (header.indexOf("GET /fire_spike") >= 0)
                        {
                            client.print("Fire_spike");
                            next_command = Command::fireSpike;
                            /*
                            client.print("Ematch Status: ");
                            client.println(digitalRead(PYRO_CHANNEL_PIN));

                            client.print("Continuity Status: ");
                            client.println(digitalRead(PYRO_CHANNEL_CONT));
                            */
                            break;
                        }

                        if (header.indexOf("GET /arm_spike") >= 0)
                        {
                            client.print("Arm_spike");
                            next_command = Command::armSpike;

                            break;
                        }

                        if (header.indexOf("GET /send_telemetry") >= 0)
                        {
                            client.print("Send_telemetry");
                            next_command = Command::sendTelemetry;

                            break;
                        }
                        else
                        { // if you got a newline, then clear currentLine
                            currentLine = "";
                        }
                    }

                    if (c != '\r')
                    { // if you got anything else but a carriage return character,
                        currentLine += c;
                    }
                }
            }
            
        }

        client.println("</body></html>");
        // Clear the header variable
        header = "";

        // Close the connection
        Serial.println();
        Serial.println("Disconnecting...");
        client.stop();
    }
}
