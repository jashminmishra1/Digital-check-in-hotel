
#define BLYNK_PRINT Serial


#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>
#include <Servo.h>

Servo servo;

// You should get Auth Token in the Blynk App.
// Go to the Project Settings (nut icon).
char auth[] = "I_90bCnK9i8LX5X2Llrrq5-HNtiz5lzK";

// Your WiFi credentials.
// Set password to "" for open networks.
char ssid[] = "IG";
char pass[] = "1234567890";

void setup()
{
  // Debug console
  Serial.begin(9600);

  Blynk.begin(auth, ssid, pass);
  servo.attach(15);
}

void loop()
{
  Blynk.run();
}
BLYNK_WRITE(V0){
  servo.write(0);
}
BLYNK_WRITE(V0){
  servo.write(90);
}
