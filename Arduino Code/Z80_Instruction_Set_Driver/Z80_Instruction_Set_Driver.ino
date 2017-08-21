/*
 * This code can be used with an Arduino Uno and an array of Voltage Dividers to directly drive the data bus of a Z80 CPU based computer.
 * This allows the system to be tested without any knowledge of writing software for the Z80 CPU in assembly. It is important to note that
 * this software can only be used to test basic functionality and that an understanding of assembly or basic may well be required to get the Z80
 * computer to execute more complex functions.
 */
//CONSTANTS
const byte NO_OP = B00000000;

//DEFINITIONS
const int MIN_PIN = 2;    //The first pin number for driving the data bus
const int MAX_PIN = 9;    //The last pin number for driving the data bus

//SETUP CODE
void setup(){
  //Beginning Serial Communications for Debugging Purposes
  Serial.begin(9600);
  
  //Setting the Pinmode of the pins controlling the Z80 data bus to OUTPUT
  for (int pin_number = MIN_PIN; pin_number <= MAX_PIN; pin_number++){
    //Setting the PinMode
    pinMode(pin_number, OUTPUT);
  }
}

//MAIN CODE
/*
 * Execute your main control code here.
 * For example if you want the processor to add two numbers then execute the set of commands for that here.
 */
void loop(){
  //Setting a variable to store the bit number
  int bit_number = 0;
  
  //Setting the Data Bus into the NO OP Command
  for (int pin_number = MIN_PIN; pin_number <= MAX_PIN; pin_number++){
    //Getting the current Bit from the Op Code Byte
    bool current_bit = bitRead(NO_OP, bit_number);
    
    //Writing the Pin to the value of the current bit in the OP Code Byte
    digitalWrite(pin_number, current_bit);

    //Incrementing the bit number
    bit_number++;
  }
}

