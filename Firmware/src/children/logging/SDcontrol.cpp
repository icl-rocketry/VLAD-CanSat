#include "SDcontrol.h"
#include "BNO.h"
#include "BMP.h"
#include "FS.h"
#include "SD.h"
#include <SPI.h>


sd_card_log::sd_card_log(){}:

void sd_card_log::begin(){
    SD.begin(SD_CS);
    if (!SD.begin(SD_CS))
    {
        Serial.println("Card Mount Failed");
        return;
    }
    uint8_t cardType = SD.cardType();
    if (cardType == CARD_NONE)
    {
        Serial.println("No SD card attached");
        return;
    }
    Serial.println("Initializing SD card...");
    if (!SD.begin(SD_CS))
    {
        Serial.println("ERROR - SD card initialization failed!");
        return; // init failed
    }
}

void sd_card_log::open_check(){
File file = SD.open("/data.txt");
if (!file)
{
    Serial.println("File doens't exist");
    Serial.println("Creating file...");
    writeFile(SD, "/data.txt", "Date, Time, Temperature, Pressure, Acc_x, Acc_y, Acc_z, SystemState\r\n");
}
else
{
    Serial.println("File already exists");
}
file.close();
}

void sd_card_log::write(){
    String timeStamp;
    String dataMessage;
}


void sd_card_log::logSDCard(){
        String timeStamp;
        String dataMessage;
        dataMessage = String(dayStamp) + "," + String(timeStamp) + "," +
                      String(Temperature) + "," + String(Pressure) + "," +
                      String(Acc_x) + "," + String(Acc_y) + "," + String(Acc_z) +
                      "," + String(SystemState) \r\n;
        Serial.print("Save data: ");
        Serial.println(dataMessage);
        appendFile(SD, "/data.txt", dataMessage.c_str());
}

void sd_card_log::appendFile(fs::FS &fs, const char * path, const char * message) {
  Serial.printf("Appending to file: %s\n", path);
  File file = fs.open(path, FILE_APPEND);
  if(!file) {
    Serial.println("Failed to open file for appending");
    return;
  }
  if(file.print(message)) {
    Serial.println("Message appended");
  } else {
    Serial.println("Append failed");
  }
  file.close();
}
