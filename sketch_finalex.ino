void setup() {
  // put your setup code here, to run once:
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
  int x = digitalRead(2);
  if (x == 1) {
    Serial.print(100);
    delay(1000);
  }

  int y = digitalRead(3);
  if (y == 1) {
    Serial.print(255);
    delay(1000);
  }

}
