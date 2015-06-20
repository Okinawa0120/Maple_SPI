HardwareSPI spi(1);
void setup(){
  spi_init(SPI1);
  spi.begin(SPI_1_125MHZ, MSBFIRST, 0);
}
byte recvd;
void loop(){
  spi_init(SPI1);  //clearing SPI data register and control register
  spi.begin(SPI_1_125MHZ, MSBFIRST, 0);
  recvd=spi.transfer(2);
  SerialUSB.println(recvd);
}
