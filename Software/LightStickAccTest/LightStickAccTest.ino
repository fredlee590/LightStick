// LightStickAccTest.ino
// Basic test of wire to develop query loop of accelerometer data

#include <Wire.h>
#include "FastLED.h" // TODO: eliminate this? takes up a majority of program space.

#define ACC_ADDR 0x3A >> 1 //0x3A
#define DATA_PIN 4
// How many leds in your strip?
#define NUM_LEDS 23

#define ACC_CTRL_REG1 0x2A
#define ACC_CTRL_REG2 0x2B
#define ACC_CTRL_REG4 0x2D
#define ACC_CTRL_REG5 0x2E
#define ACC_XYZ_DATA_CFG 0x0E
#define ACC_PL_CFG 0x11
#define DEVICE_ID_REG 0x0D

unsigned char count = 0;
CRGB leds[NUM_LEDS];

void setColor(CRGB color) {
  for(int i = 0; i < NUM_LEDS; i++)
  {
    leds[i] = color;
  }
  delay(100);
  FastLED.show();
}

void write_to(byte addr, byte data) {
  // step 1: instruct sensor to read echoes
  Wire.beginTransmission(ACC_ADDR); // transmit to accelerometer
  // the address specified in the datasheet is 0x1C
  // but i2c adressing uses the high 7 bits so it's 0x1C >> 1 = 0x0E
  Wire.write(addr);      // sets register pointer to the whomai register (0x0D)
  Wire.write(data);      // sets register pointer to the whomai register (0x0D)
  Wire.endTransmission();      // stop transmitting
}

unsigned char read_byte_from(byte addr) {
  // step 1: instruct sensor to read echoes
  Wire.beginTransmission(ACC_ADDR); // transmit to accelerometer
  // the address specified in the datasheet is 0x1C
  // but i2c adressing uses the high 7 bits so it's 0x1C >> 1 = 0x0E
  Wire.write(addr);      // sets register pointer to the whomai register (0x0D)
  Wire.endTransmission(false);      // stop transmitting, but use repeated start
  
  Wire.requestFrom(ACC_ADDR, 1);    // request 1 bytes from slave device #112

  // step 5: receive reading from sensor
  if (1 <= Wire.available()) { // if one byte was received
    return Wire.read();  // receive high byte (overwrites previous reading)
  } else {
    // TODO: add LED error
    while(true);
  }
}

bool check_acc_read() {
  while(!(read_byte_from(DEVICE_ID_REG) & 0x1A));
}

void check_regs() {
  read_byte_from(ACC_CTRL_REG1);
  read_byte_from(ACC_CTRL_REG2);
  read_byte_from(ACC_CTRL_REG4);
  read_byte_from(ACC_CTRL_REG5);
  read_byte_from(ACC_XYZ_DATA_CFG);
  read_byte_from(ACC_PL_CFG);
}

void init_mm8451() {
  check_acc_read();
    
  write_to(ACC_CTRL_REG2, 0x40);
  while (read_byte_from(ACC_CTRL_REG2) & 0x40);

  write_to(ACC_XYZ_DATA_CFG, 0x40);
  write_to(ACC_CTRL_REG2, 0x02);
  write_to(ACC_CTRL_REG4, 0x01);
  write_to(ACC_CTRL_REG5, 0x01);
  
  write_to(ACC_PL_CFG, 0x40);

  write_to(ACC_CTRL_REG1, 0x01 | 0x04);
}

void setup() {
  FastLED.addLeds<NEOPIXEL, DATA_PIN>(leds, NUM_LEDS);
  FastLED.setBrightness(5);

  Wire.begin();        // join i2c bus (address optional for master)

  setColor(CRGB::Red);
  init_mm8451();
  setColor(CRGB::Green);
}

void loop() {
  //delay(1);                  // wait a bit since people have to read the output :)
}
