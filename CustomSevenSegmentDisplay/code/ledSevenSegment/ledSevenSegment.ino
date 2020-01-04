#define SEGMENT_A  5
#define SEGMENT_B 6
#define SEGMENT_C 7
#define SEGMENT_D 8
#define SEGMENT_E 9
#define SEGMENT_F 10
#define SEGMENT_G 11
//#define SEGMENT_dp  

#define SEG_SELECT_1  A3
#define SEG_SELECT_2  A2
#define SEG_SELECT_3  A1
#define SEG_SELECT_4  A0

#define SEGMENT_SWITCH_DELAY  5
int CounterPeriod = 1000;
unsigned long time_now = 0;
/*
    a
   --
  |  |
 f|g |b
   --
  |  |
 e|  |c
   --
   d
   
Byte = hgfedcba
*/
uint8_t segmentdecode[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0X7D,0X07,0X7f,0X6f,0X77,0x7C,0x39,0x5E,0x79,0x71};

void DisplayNum(uint8_t num)
{
    digitalWrite(SEGMENT_A, (num & 0x01)?HIGH:LOW);
    digitalWrite(SEGMENT_B, (num & 0x02)?HIGH:LOW);
    digitalWrite(SEGMENT_C, (num & 0x04)?HIGH:LOW);
    digitalWrite(SEGMENT_D, (num & 0x08)?HIGH:LOW);
    digitalWrite(SEGMENT_E, (num & 0x10)?HIGH:LOW);
    digitalWrite(SEGMENT_F, (num & 0x20)?HIGH:LOW);
    digitalWrite(SEGMENT_G, (num & 0x40)?HIGH:LOW);
}

void setup() {
  // put your setup code here, to run once:
    pinMode(LED_BUILTIN, OUTPUT);
    pinMode(SEGMENT_A, OUTPUT);

    pinMode(SEGMENT_A, OUTPUT);
    pinMode(SEGMENT_B, OUTPUT);
    pinMode(SEGMENT_C, OUTPUT);
    pinMode(SEGMENT_D, OUTPUT);
    pinMode(SEGMENT_E, OUTPUT);
    pinMode(SEGMENT_F, OUTPUT);
    pinMode(SEGMENT_G, OUTPUT);
//    pinMode(SEGMENT_dp,OUTPUT);

    pinMode(SEG_SELECT_1, OUTPUT);
    pinMode(SEG_SELECT_2, OUTPUT);
    pinMode(SEG_SELECT_3, OUTPUT);
    pinMode(SEG_SELECT_4, OUTPUT);
}

int i;
int Counter=0;
int convertedInUnit[4];
//1234
void DisplayOnSegment(int d)
{  
  convertedInUnit[0] = d/1000;
  digitalWrite(SEG_SELECT_1, HIGH);
  digitalWrite(SEG_SELECT_2, LOW);
  digitalWrite(SEG_SELECT_3, LOW);
  digitalWrite(SEG_SELECT_4, LOW);
  DisplayNum(segmentdecode[convertedInUnit[0]]);
  delay(SEGMENT_SWITCH_DELAY);
  DisplayNum(0x00);//1

  convertedInUnit[1] = (d%1000)/100;
  digitalWrite(SEG_SELECT_1, LOW);
  digitalWrite(SEG_SELECT_2, HIGH);
  digitalWrite(SEG_SELECT_3, LOW);
  digitalWrite(SEG_SELECT_4, LOW);
  DisplayNum(segmentdecode[convertedInUnit[1]]);
  delay(SEGMENT_SWITCH_DELAY);
  DisplayNum(0x00);//2

  convertedInUnit[2] = ((d%1000)%100)/10;
  digitalWrite(SEG_SELECT_1, LOW);
  digitalWrite(SEG_SELECT_2, LOW);
  digitalWrite(SEG_SELECT_3, HIGH);
  digitalWrite(SEG_SELECT_4, LOW);
  DisplayNum(segmentdecode[convertedInUnit[2]]);
  delay(SEGMENT_SWITCH_DELAY);
  DisplayNum(0x00);//3

  convertedInUnit[3] = ((d%1000)%100)%10;
  digitalWrite(SEG_SELECT_1, LOW);
  digitalWrite(SEG_SELECT_2, LOW);
  digitalWrite(SEG_SELECT_3, LOW);
  digitalWrite(SEG_SELECT_4, HIGH);
  DisplayNum(segmentdecode[convertedInUnit[3]]);
  delay(SEGMENT_SWITCH_DELAY);
  DisplayNum(0x00);//4
}

void loop() {
  if(millis() > time_now + CounterPeriod)
  {
    time_now = millis();
    Counter++;
    if(Counter > 9999)
    {
      Counter = 0;
    }
  }
 DisplayOnSegment(Counter); 
}
