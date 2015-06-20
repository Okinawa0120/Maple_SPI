HardwareSPI spi(1);
volatile uint8 recvd = 1;

void setup() {
  pinMode(7,INPUT_PULLUP);  //setting SS pin  
  spi_init(SPI1);
  spi.beginSlave(MSBFIRST, 0);
}

void loop() {
  spi_init(SPI1);  //clearing SPI data register and control register
  spi.beginSlave(MSBFIRST, 0);
  recvd = spi.transfer(3);
  SerialUSB.println(recvd);
}

