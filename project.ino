#include <Servo.h>  //servo library
Servo sg90;
const int ledred = 9;
const int ledgreen = 10;
const int ledblue = 11;
int servopin = 8;
int echo = 7;
int trig = 6;
int distance;
int duration;
void setup() {
  Serial.begin(9600);
  sg90.attach(servopin);
  pinMode(trig, OUTPUT);
  pinMode(echo, INPUT);
  pinMode(ledred, OUTPUT);
  pinMode(ledgreen, OUTPUT);
  pinMode(ledblue, OUTPUT);
}

void loop() {
  digitalWrite(trig, 0);
  delay(2);
  digitalWrite(trig, 1);
  delayMicroseconds(10);
  digitalWrite(trig, 0);
  duration = pulseIn(echo,1);
  distance = duration * 0.034 / 2;
  
  if (distance < 10) {
    analogWrite(ledred, 0);
    analogWrite(ledgreen, 255);
    analogWrite(ledblue, 0);
    sg90.write(30);
    delay(3000);
    Serial.print("distance: ");
    Serial.println(distance);
  } else {
    analogWrite(ledred, 255);
    analogWrite(ledgreen, 0);
    analogWrite(ledblue, 0);
    sg90.write(110);
  }
}
