
const int SHIFT_CLK=4;
const int SERIAL_DATA=3;
const int STORE_CLK=5;

#define COMMAND 0
#define DATA    1

#define RS_BIT_POSITION  (0)
#define E_BIT_POSITION  (2)
#define BL_BIT_POSITION (3)
#define D4_BIT_POSITION (4)
#define D5_BIT_POSITION (5)
#define D6_BIT_POSITION (6)
#define D7_BIT_POSITION (7)
    
uint8_t LCDOutByte;
uint8_t LCDConfigByte;

const uint8_t lcd_init_seq[]={0x03,0x03,0x03,0x02,0x28,0x01,0x0c};


uint8_t changeOrderLSBtoMSB(uint8_t in)
{
    uint8_t out = 0;
    out = (in & 0x01) << 7;    
    out |= ((in & 0x02)>> 1) << 6;    
    out |= ((in & 0x04)>> 2) << 5;    
    out |= ((in & 0x08)>> 3) << 4;    
    out |= ((in & 0x10)>> 4) << 3;    
    out |= ((in & 0x20)>> 5) << 2;    
    out |= ((in & 0x40)>> 6) << 1;    
    out |= ((in & 0x80)>> 7) << 0;    
return out;
}

void init_lcd()
{
    uint8_t i;
    for(i=0;i<7;i++)
    {
        LcdByteOut(lcd_init_seq[i],COMMAND);
        delay(5);
    }
}

void LcdByteOut(uint8_t dByte,uint8_t mode)
{
  uint8_t ldata;
  ldata = dByte;
  LCDOutByte = 0;
  if(COMMAND == mode)
  {
  //        LCDOutByte &=0xFE;
  }
  else
  {
      LCDOutByte |=1<<(RS_BIT_POSITION);
  }
  LCDOutByte |= ((ldata & 0xF0) );
  
  enable();
  ldata=ldata<<4;
  LCDOutByte &= 0x0F;
  LCDOutByte |= ((ldata & 0xF0));
  enable();
  delay(1);    
}


void enable()
{
  LCDOutByte |=(1<<E_BIT_POSITION);    
  displayData(&LCDOutByte);
  delay(1);
  LCDOutByte = LCDOutByte & 0xFB;
  
  displayData(&LCDOutByte);
  delay(1);
}

void print(const uint8_t *str,uint8_t add)
{
    LcdByteOut(add,COMMAND);
    delay(1);
    while(*str != '\0')
    {
        LcdByteOut(*str++,DATA);
    }
}

void ClrDisp(void)
{
    LcdByteOut(0x01,COMMAND);
    delay(5);
}

void displayData(uint8_t const *str)
{
  digitalWrite(STORE_CLK,LOW);
  shiftOut(*str);   
  digitalWrite(STORE_CLK,HIGH);
}

void shiftOut(uint8_t a)
{
    char i;
    a = changeOrderLSBtoMSB(a);
    for(i=0;i<8;i++)
    {
        if(a&0x01)
        {
            digitalWrite(SERIAL_DATA,HIGH);
        }
        else
        {
            digitalWrite(SERIAL_DATA,LOW);
        }
        a = a>>1;
        digitalWrite(SHIFT_CLK,LOW);
        digitalWrite(SHIFT_CLK,HIGH);
    }
    
}

void setup() {
  pinMode(SERIAL_DATA,OUTPUT);
  pinMode(SHIFT_CLK,OUTPUT);
  pinMode(STORE_CLK,OUTPUT);
  init_lcd();
  
  print("STechiezDIY ",0x80);

}

void loop() {
  // put your main code here, to run repeatedly:

}
