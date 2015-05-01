HardwareSPI spi(1);
void setup(){
  spi.begin();
}
byte i=0b11101110,n;
void loop(){
  n=spi.transfer(i);
  SerialUSB.println(n);
  delay(50);
}
