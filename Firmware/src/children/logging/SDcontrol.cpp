#include "SDcontrol.h"
#include "../sensors/IMU.h"
#include "../sensors/barom.h"
#include "FS.h"
#include "SD.h"
#include <SPI.h>
#define SD_CS 5


//sd_card_log::sd_card_log(barom* bmp388, IMU* bno){
sd_card_log::sd_card_log(){
  //_bmp388 = bmp388;
  //_bno = bno;
};

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
  unsigned long timeStamp = millis();

  //uint8_t altitude = _bmp388.getAltitude();
  //uint8_t[3] orientation = _bno.getOrientation();
  
  // Arbitrary numbers for testing
  uint8_t altitude = 20;
  uint16_t SystemState = 5;
  uint8_t orientation[3] = {1,2,3};

  String dataMessage;
  dataMessage = String(timeStamp) + "," +
                String(altitude) + "," +
                String(orientation[0]) + "," + String(orientation[1]) + "," + String(orientation[2]) +
                "," + String(SystemState) + "\r\n";
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

void sd_card_log::writeFile(fs::FS &fs, const char * path, const char * message) {
  Serial.printf("Writing file: %s\n", path);
  File file = fs.open(path, FILE_WRITE);
  if(!file) {
    Serial.println("Failed to open file for writing");
    return;
  }
  if(file.print(message)) {
    Serial.println("File written");
  } else {
    Serial.println("Write failed");
  }
  file.close();
}
