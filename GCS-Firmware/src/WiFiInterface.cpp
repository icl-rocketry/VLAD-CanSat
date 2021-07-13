#include "WiFiInterface.h"
#include "commands.h"
#include "radio.h"

#include <WiFi.h> // Load Wi-Fi library

// WIFI credentials
const char *ssid = "ICLR_CanSat";
const char *password = "rocketsAreCool!";

WiFiInterface::WiFiInterface(radio* RadioGCS):
_RadioGCS(RadioGCS),
server(80)
{}

void WiFiInterface::setupWIFI(){
   
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
                        client.println("<p><a href=\"192.168.4.1/fire_spike\"><button class=\"button\">Fire spike</button></a></p>");
                        client.println("<p><a href=\"192.168.4.1/arm_spike\"><button class=\"button\">Arm Spike</button></a></p>");
                        client.println("<p><a href=\"192.168.4.1/send_telemetry\"><button class=\"button\">Send Telemetry</button></a></p>");

                        client.println("<p>System State: " + String(_telemetry.systemState) + "</p>");
                        client.println();
                        client.println("<p>Altitude: " + String(_telemetry.altitude) + "</p>");
                        client.println();
                        client.println("<p>Orientation real: " + String(_telemetry.orientations[0]) + "</p>");
                        client.println("<p>Orientation i: " + String(_telemetry.orientations[1]) + "</p>");
                        client.println("<p>Orientation j: " + String(_telemetry.orientations[2]) + "</p>");
                        client.println("<p>Orientation k: " + String(_telemetry.orientations[3]) + "</p>");

                        if (header.indexOf("GET /192.168.4.1/fire_spike") >= 0)
                        {
                            client.print("Fire spike");
                            Serial.println("Sending Fire Spike Command");
                            _RadioGCS->sendCommand(Command::fireSpike);
                            /*
                            client.print("Ematch Status: ");
                            client.println(digitalRead(PYRO_CHANNEL_PIN));

                            client.print("Continuity Status: ");
                            client.println(digitalRead(PYRO_CHANNEL_CONT));
                            */
                           client.print("<HEAD>");
                           client.print("<meta http-equiv=\"refresh\" content=\"0;url=/\">");
                           client.print("</head>");
                            break;
                            
                        } else if (header.indexOf("GET /192.168.4.1/arm_spike") >= 0)
                        {
                            client.print("Arm_spike");
                            _RadioGCS->sendCommand(Command::armSpike);
                            Serial.println("Sending Arm Spike Command");

                            client.print("<HEAD>");
                            client.print("<meta http-equiv=\"refresh\" content=\"0;url=/\">");
                            client.print("</head>");

                            break;
                        } else if (header.indexOf("GET /192.168.4.1/send_telemetry") >= 0)
                        {
                            client.print("Send_telemetry");
                            _RadioGCS->sendCommand(Command::sendTelemetry);
                            client.print("<HEAD>");
                            client.print("<meta http-equiv=\"refresh\" content=\"0;url=/\">");
                            client.print("</head>");
                            Serial.println("Sending Send Telemetry Command");
                            break;
                        }

                        // Display the HTML web page
                        client.println("<!DOCTYPE html><html>");
                        client.println("<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
                        client.println("<link rel=\"icon\" href=\"data:,\">");
                        // CSS to style the on/off buttons
                        client.println("<style>html { font-family: Helvetica; display: inline-block; margin: 0px auto; text-align: center;}");
                        client.println(".button { background-color: #00FF00; border: none; color: white; padding: 16px 40px;");
                        client.println("text-decoration: none; font-size: 30px; margin: 2px; cursor: pointer;}");
                        client.println(".button2 {background-color: #FF0000;}</style></head>");

                        // Web Page Heading
                        client.println("<body><h1>CanSat Awesome GCS</h1>");

                        // Display current state, and ON/OFF buttons for EMatch
                        //client.println("<p>EMatch - State " + pyroState + "</p>");

                        // If the pyroState is off, it displays the ON button
                        /*if (pyroState == "off")
                        {
                            client.println("<p><a href=\"/pyro/on\"><button class=\"button\">ON</button></a></p>");
                        }
                        else
                        {
                            client.println("<p><a href=\"/pyro/off\"><button class=\"button button2\">OFF</button></a></p>");
                        }*/
                        client.println("</body></html>");

                        // The HTTP response ends with another blank line
                        client.println();

                        // Break out of the while loop
                        break;
                    }
                    else
                    { // if you got a newline, then clear currentLine
                        currentLine = "";
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
