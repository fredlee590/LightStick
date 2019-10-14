#include <Adafruit_MMA8451.h>
#include <FastLED.h>

#define NUM_LEDS 23
#define DATA_PIN 4  // all that's required for clockless LED strip like Neopixel
#define SAT 255  // saturation
#define BRT 128  // brightness
#define ACCBITSFT 6  // 14 bit MMA to 8 bit FastLED shift amount

// Define globals: array of leds, accelerometer control, active LEDs
CRGB leds[NUM_LEDS];
Adafruit_MMA8451 mma;
byte numActiveLEDs;

void setup() {
  numActiveLEDs = 0;
  FastLED.addLeds<NEOPIXEL, DATA_PIN>(leds, NUM_LEDS);

  for(int i = 0; i < NUM_LEDS; i++) {
    leds[i] = CRGB::Black;
  }

  mma = Adafruit_MMA8451();
  mma.begin(0x1C);  // Address pin tied to GND, rather than leave it floating, so specify i2c addr
}

void loop() {
  mma.read();

  // slow turn on is kewl
  if(numActiveLEDs < NUM_LEDS) {
    numActiveLEDs++;
  }

  for(byte i = 0; i < numActiveLEDs; i++) {
    CRGB clr;
    byte x = abs(mma.x) >> ACCBITSFT;
    byte y = abs(mma.y) >> ACCBITSFT;
    byte z = abs(mma.z) >> ACCBITSFT;
    clr.setRGB(x, y, z);
    leds[i] = clr;
  }

  FastLED.show();
  delay(20);
}
