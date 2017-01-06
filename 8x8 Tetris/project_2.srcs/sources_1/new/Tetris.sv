`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2016 11:05:49
// Design Name: 
// Module Name: Tetris
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Tetris(
    input logic clock, //100Mhz clock
    input logic toLeftButton, // Button for shifting left
    input logic toRightButton, // Button for shifting right
    input logic reset, // Button for reset
    output logic oe, // output enable
    output logic SH_CP, //shifter clock pulse
    output logic ST_CP, //storage clock pulse
    output logic MR, //reset
    output logic DS,
    output logic [7:0]cathode, //cathodes in RGB
    output logic [6:0] seg, //7Segment
    output logic dp, //individual LED output for the 7-segment along with the digital point
    output logic[3:0] an //anode for 7 segment
    );


//Initiliaze message variable
logic [24:1]message; //message to send rgb
logic [7:0]red; // red part of message
logic [7:0]green; // green part of message
logic [7:0]blue; // blue part of message

logic f;
logic e;
assign message[24:17] = red;
assign message[16:9] = green;
assign message[8:1] = blue;

integer i = 1; //controal recieving data
integer a = 0; // rows in rgb
integer d = 0; //frame

ClockDivider (clock, f, e); //Dividing clock

//initiliaze i
always_ff @(posedge e)
begin
    if(i<=410) i<=i+1;
    else i<=1;
end
    
//Reset the module 4 times    
always_comb
begin
    if (i<4)MR=0; //reset the system until 4
    else MR=1;
    
    if (i>4 && i<28) DS=message[i-3]; //send the data
    else DS=0;

    
    if (i<28) //sending data completed stop the clock until new data
    begin
        SH_CP=f;             
        ST_CP=e;
    end
    else
    begin
        SH_CP=0;
        ST_CP=1;
    end

end

always_ff@(posedge f) //output enable 0 when clock stopped
begin
    if (i>28 && i<409)
    begin
        oe<=0;
    end
    else
    begin
        oe<=1;
    end
end

//clocks for deciding when to store tetris blocks on each row
logic [4:0]dForTempCathodes;
logic clockDForTempCathodes;
always_ff@(posedge f)
begin
    if (i==410)//going to next row
    begin
        if(a<=7)a<=a+1;
        else a<=0;
    end
end


always_ff@(posedge f) //new fullscren(frame) when all rows completed
begin
    if (i==410)
        begin
            if (a==7)
            begin
                if(d<=25)  d<=d+1;
                else d<=0;
                if(dForTempCathodes==5'b11001) dForTempCathodes<=1;
                else dForTempCathodes <=dForTempCathodes+1;
            end
        end
end


always_comb
begin
if(dForTempCathodes==5'b11001) clockDForTempCathodes=0;//clock for storing data is high on 25th frame
else clockDForTempCathodes=1;
end

//Debouncer for push buttons
logic clockDebounce;
logic [19:0]counterDebounce;
localparam debounceConstant = 1000000;
always@(posedge clock, posedge reset)
begin
    if(reset) counterDebounce <=0;
    else counterDebounce <=counterDebounce+1;
end

always_comb
begin
    if(counterDebounce == debounceConstant) clockDebounce = 1;
    else clockDebounce = 0;
end

//Debouncer(clock, clockDebounce);

//Deciding which row 
always_comb
begin
    if (a==0)      cathode=8'b10000000;
    else if (a==1) cathode=8'b01000000;
    else if (a==2) cathode=8'b00100000;
    else if (a==3) cathode=8'b00010000;
    else if (a==4) cathode=8'b00001000;
    else if (a==5) cathode=8'b00000100;
    else if (a==6) cathode=8'b00000010;
    else           cathode=8'b00000001;
end

//Edgedetector to use push button one time on press
reg [1:0] rightBtnState;

// If we see a edge now, but didnt 1 cycle ago, pulse
assign risedRightButton = rightBtnState[0] & ~rightBtnState[1];

// Shift register storing the btn state now and 1 cycle ago
always @(posedge clockDebounce) begin
  rightBtnState <= {rightBtnState[0], toRightButton};
end

reg [1:0] leftBtnState;

// If we see a edge now, but didnt 1 cycle ago, pulse
assign risedLeftButton = leftBtnState[0] & ~leftBtnState[1];

// Shift register storing the btn state now and 1 cycle ago
always @(posedge clockDebounce) begin
  leftBtnState <= {leftBtnState[0], toLeftButton};
end

//Initiliazind tetrisimos with random sequence
reg [7:0]redBlock;
logic [2:0]counterRandom;

//Deciding which tetrisimo will come with a help of a counter which can be say random
 always @(posedge clockDebounce) 
 begin
    counterRandom <= counterRandom + 1;
    if(jA==0) begin
    if(counterRandom==3'b000 || counterRandom == 3'b001) redBlock <= 8'b00011000;
    if(counterRandom==3'b010 || counterRandom == 3'b011) redBlock <= 8'b00011100;
    if(counterRandom==3'b100 || counterRandom == 3'b101) redBlock <= 8'b00001000;
    if(counterRandom==3'b110 || counterRandom == 3'b111) redBlock <= 8'b00001000;
    end
    //Executing for shifting tetrisimos
    if(risedLeftButton) redBlock <= (~redBlock[0]) ? redBlock >> 1 : redBlock;
    if(risedRightButton) redBlock <= (~redBlock[7]) ? redBlock << 1 : redBlock;
end

//Variables for storing rows on RGB
logic [24:1] tempFirstCathode=24'b0;
logic [24:1] tempSecondCathode=24'b0;
logic [24:1] tempThirdCathode=24'b0;
logic [24:1] tempFourthCathode=24'b0;
logic [24:1] tempFivethCathode=24'b0;
logic [24:1] tempSixthCathode=24'b0;
logic [24:1] tempSeventhCathode=24'b0;
logic [24:1] tempEightthCathode=24'b0;

logic [3:0] in0 = 4'b0000;
logic [3:0] in1 = 4'b0000;
logic [3:0] in2 = 4'b0000;
logic [3:0] in3 = 4'b0000;
logic [7:0]boolean;
SevSeg_4digit(clock, in0, in1, in2, in3, seg, dp, an);

//Variable jA change on every 25th frame
int jA = 0;

//Variable for understanding if there is an intersection on tetrisimos
int IntersectionChecker;

//This part saves cathodes, increase 7segment according to score and change the rows if one row deleted
always_ff@(posedge clockDForTempCathodes, posedge reset)
begin
        if(reset) jA <= 0;
        else begin
            jA <= jA+1;
            if(tempEightthCathode == 8'b11111111) begin
                //tempEightthCathode<=8'b0;
                tempEightthCathode<=tempSeventhCathode;
                tempSeventhCathode<=tempSixthCathode;
                tempSixthCathode <=tempFivethCathode;
                tempFivethCathode <= tempFourthCathode;
                tempFourthCathode <= tempThirdCathode;
                tempThirdCathode <= tempSecondCathode;
                tempSecondCathode <= tempFirstCathode;
                tempFirstCathode <= 8'b00000000;
                in0 <= in0+1;
            end
            if(tempSeventhCathode == 8'b11111111) begin
                //tempEightthCathode<=8'b0;
                tempSeventhCathode<=tempSixthCathode;
                tempSixthCathode <=tempFivethCathode;
                tempFivethCathode <= tempFourthCathode;
                tempFourthCathode <= tempThirdCathode;
                tempThirdCathode <= tempSecondCathode;
                tempSecondCathode <= tempFirstCathode;
                tempFirstCathode <= 8'b00000000;
                in0 <= in0+1;
            end
            if(tempSixthCathode == 8'b11111111) begin
                //tempEightthCathode<=8'b0;
                tempSixthCathode <=tempFivethCathode;
                tempFivethCathode <= tempFourthCathode;
                tempFourthCathode <= tempThirdCathode;
                tempThirdCathode <= tempSecondCathode;
                tempSecondCathode <= tempFirstCathode;
                tempFirstCathode <= 8'b00000000;
                in0 <= in0+1;
            end
            if(tempFivethCathode == 8'b11111111) begin
                //tempEightthCathode<=8'b0;
                tempFivethCathode <= tempFourthCathode;
                tempFourthCathode <= tempThirdCathode;
                tempThirdCathode <= tempSecondCathode;
                tempSecondCathode <= tempFirstCathode;
                tempFirstCathode <= 8'b00000000;
                in0 <= in0+1;
            end
            if(tempFourthCathode == 8'b11111111) begin
                //tempEightthCathode<=8'b0;
                tempFourthCathode <= tempThirdCathode;
                tempThirdCathode <= tempSecondCathode;
                tempSecondCathode <= tempFirstCathode;
                tempFirstCathode <= 8'b00000000;
                in0 <= in0+1;
            end
            if(tempThirdCathode == 8'b11111111) begin
                //tempEightthCathode<=8'b0;
                tempThirdCathode <= tempSecondCathode;
                tempSecondCathode <= tempFirstCathode;
                tempFirstCathode <= 8'b00000000;
                in0 <= in0+1;
            end
            if(tempSecondCathode == 8'b11111111) begin
                //tempEightthCathode<=8'b0;
                tempSecondCathode <= tempFirstCathode;
                tempFirstCathode <= 8'b00000000;
                in0 <= in0+1;
            end
            if(boolean[0]==1)begin
                IntersectionChecker=checkIntersection(tempFirstCathode[8:1],redBlock[7:0]);
                if(IntersectionChecker==1)begin
                    tempFirstCathode=24'b0;
                    tempSecondCathode=24'b0;
                    tempThirdCathode=24'b0;
                    tempFourthCathode=24'b0;
                    tempFivethCathode=24'b0;
                    tempSixthCathode=24'b0;
                    tempSeventhCathode=24'b0; 
                    tempEightthCathode=24'b0;
                    in0 <= 0;
                    jA<=0;
                end
                IntersectionChecker=checkIntersection(tempSecondCathode[8:1],redBlock[7:0]);
                tempFirstCathode <= (IntersectionChecker==1) ? tempFirstCathode+redBlock : tempFirstCathode;
            end
            else if(boolean[1]==1)begin
                if(IntersectionChecker==0) begin
                    IntersectionChecker=checkIntersection(tempThirdCathode[8:1],redBlock[7:0]);
                    tempSecondCathode <= (IntersectionChecker==1) ? tempSecondCathode+redBlock : tempSecondCathode;
                end 
                else begin
                tempSecondCathode <= tempSecondCathode;
                jA <=0;
                end
            end
            else if(boolean[2]==1)begin
                if(IntersectionChecker==0) begin
                    IntersectionChecker=checkIntersection(tempFourthCathode[8:1],redBlock[7:0]);
                    tempThirdCathode <= (IntersectionChecker==1) ? tempThirdCathode+redBlock : tempThirdCathode;
                    if(IntersectionChecker==1) jA = 0;
                end
                else begin
                    tempThirdCathode <= tempThirdCathode;
                    jA <=0;
                end
            end
            else if(boolean[3]==1)begin
                if(IntersectionChecker==0) begin
                    IntersectionChecker=checkIntersection(tempFivethCathode[8:1],redBlock[7:0]);
                    tempFourthCathode <= (IntersectionChecker==1) ? tempFourthCathode+redBlock : tempFourthCathode;
                    if(IntersectionChecker==1) jA = 0;
                end
                else begin
                    tempFourthCathode <= tempFourthCathode;
                    jA <=0;
                end
            end
            else if(boolean[4]==1)begin
                if(IntersectionChecker==0) begin
                    IntersectionChecker=checkIntersection(tempSixthCathode[8:1],redBlock[7:0]);
                    tempFivethCathode <= (IntersectionChecker==1) ? tempFivethCathode+redBlock : tempFivethCathode;
                    if(IntersectionChecker==1) jA = 0;
                end
                else begin
                    tempFivethCathode<=tempFivethCathode;
                    jA <=0;
                end
            end
            else if(boolean[5]==1)begin
                if(IntersectionChecker==0) begin
                    IntersectionChecker=checkIntersection(tempSeventhCathode[8:1],redBlock[7:0]);
                    tempSixthCathode <= (IntersectionChecker==1) ? tempSixthCathode+redBlock : tempSixthCathode;
                    if(IntersectionChecker==1) jA = 0;
                end
                else begin 
                    tempSixthCathode<=tempSixthCathode;
                    jA <=0;
                end
            end
            else if(boolean[6]==1)begin
                if(IntersectionChecker==0) begin
                    IntersectionChecker=checkIntersection(tempEightthCathode[8:1],redBlock[7:0]);
                    tempSeventhCathode <= (IntersectionChecker==1) ? tempSeventhCathode+redBlock : tempSeventhCathode;
                    if(IntersectionChecker==1) jA = 0;
                end
                else begin
                    tempSeventhCathode<=tempSeventhCathode;
                    jA <=0;
                end
            end
            else if(boolean[7]==1)begin
             
            IntersectionChecker=checkIntersection(tempEightthCathode[8:1],redBlock[7:0]);
            if(tempEightthCathode==24'b0) tempEightthCathode = redBlock;
            else tempEightthCathode <= (IntersectionChecker==0) ? tempEightthCathode+redBlock : tempEightthCathode;
            jA <=0;
            end
        end    
end
  
//boolean variable is for activating the tempcathodes for it's own cathode to save it    
always_comb
begin
    case(jA)
    0 : boolean = 8'b00000001;
    1 : boolean = 8'b00000010;
    2 : boolean = 8'b00000100;
    3 : boolean = 8'b00001000;
    4 : boolean = 8'b00010000;
    5 : boolean = 8'b00100000;
    6 : boolean = 8'b01000000; 
    7 : boolean = 8'b10000000; 
    endcase
end


//This part is for Showing the RGB    
always_comb
begin
    if (jA==0) begin
   // boolean = 8'b00000001;
    if (a==0)
    begin
        red =redBlock;
        blue =8'b00000000;
        green =8'b00000000;
    end
    
    else if (a==1)
    begin
        red =tempSecondCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
    
    else if (a==2)
    begin
        red =tempThirdCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end

    else if (a==3)
    begin
        red =tempFourthCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end

    else if (a==4)
    begin
        red =tempFivethCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end

   else if (a==5)
    begin
        red =tempSixthCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end

    else if (a==6)
    begin
        red =tempSeventhCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end

    else if (a==7)
    begin
        red =tempEightthCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end   
end
//jA1=jA0+1;
else if (jA==1) begin
    //boolean = 8'b00000010;
    if (a==0) 
    begin
        red =tempFirstCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
   else if (a==1) 
    begin    
       red =redBlock;
        blue =8'b00000000;
        green =8'b00000000;
    end
    else if (a==2) 
    begin
    red =tempThirdCathode;
    blue = 8'b00000000;
    green =8'b00000000;
    end
    else if (a==3) 
    begin
        red =tempFourthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
     else if (a==4) 
    begin
        red =tempFivethCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    else if (a==5) 
    begin
        red =tempSixthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    
    else if (a==6) 
    begin
        red =tempSeventhCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end

    else
    begin
        red =tempEightthCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
end
//jA2=jA1+1;
else if (jA==2) begin
    //boolean = 8'b00000100;
    if (a==0) 
    begin
        red =tempFirstCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
   else if (a==1) 
    begin    
        red =tempSecondCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
    else if (a==2) 
    begin
    red =redBlock;
    blue = 8'b00000000;
    green =8'b00000000;
    end
    else if (a==3) 
    begin
        red =tempFourthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
     else if (a==4) 
    begin
        red =tempFivethCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    else if (a==5) 
    begin
        red =tempSixthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    
    else if (a==6) 
    begin
        red =tempSeventhCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end

    else
    begin
        red =tempEightthCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
end
//jA3=jA2+1;
else if (jA==3) begin
    //boolean = 8'b00001000;
    if (a==0) 
    begin
        red =tempFirstCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
   else if (a==1) 
    begin    
        red =tempSecondCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
    else if (a==2) 
    begin
    red =tempThirdCathode;
    blue = 8'b00000000;
    green =8'b00000000;
    end
    else if (a==3) 
    begin
        red =redBlock;
        blue = 8'b00000000;
        green =8'b00000000;
    end
     else if (a==4) 
    begin
        red =tempFivethCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    else if (a==5) 
    begin
        red =tempSixthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    
    else if (a==6) 
    begin
        red =tempSeventhCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end

    else
    begin
        red =tempEightthCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
end
//jA4=jA3+1;
else if (jA==4) begin
//boolean = 8'b00010000;
    if (a==0) 
    begin
        red =tempFirstCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
   else if (a==1) 
    begin    
        red =tempSecondCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
    else if (a==2) 
    begin
    red =tempThirdCathode;
    blue = 8'b00000000;
    green =8'b00000000;
    end
    else if (a==3) 
    begin
        red =tempFourthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
     else if (a==4) 
    begin
        red =redBlock;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    else if (a==5) 
    begin
        red =tempSixthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    
    else if (a==6) 
    begin
        red =tempSeventhCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end

    else
    begin
        red =tempEightthCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
end
//jA5=jA4+1;
else if (jA==5) begin
    /*if(IntersectionChecker==0) 
    //boolean = 8'b00100000;
    else boolean = 8'b00000000;*/
    if (a==0) 
    begin
        red =tempFirstCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
   else if (a==1) 
    begin    
        red =tempSecondCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
    else if (a==2) 
    begin
    red =tempThirdCathode;
    blue = 8'b00000000;
    green =8'b00000000;
    end
    else if (a==3) 
    begin
        red =tempFourthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
     else if (a==4) 
    begin
        red =tempFivethCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    else if (a==5) 
    begin
       red = redBlock;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    
    else if (a==6) 
    begin
        red =tempSeventhCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end

    else
    begin
        red =tempEightthCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end

end
//jA6=jA5+1;
else if (jA==6) begin
    /*if(IntersectionChecker==0) boolean = 8'b01000000;
    else boolean = 8'b01000000;*/
    if (a==0) 
    begin
        red =tempFirstCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
   else if (a==1) 
    begin    
        red =tempSecondCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
    else if (a==2) 
    begin
    red =tempThirdCathode;
    blue = 8'b00000000;
    green =8'b00000000;
    end
    else if (a==3) 
    begin
        red =tempFourthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
     else if (a==4) 
    begin
        red =tempFivethCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    else if (a==5) 
    begin
        red =tempSixthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    
    else if (a==6) 
    begin
        red =redBlock;
        blue = 8'b00000000;
        green =8'b00000000;
    end

    else if (a==7)
    begin
        red =tempEightthCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
end
//jA7=jA6+1;
else if (jA==7) begin
//boolean = 8'b10000000; 
    if (a==0) 
    begin
        red =tempFirstCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
   else if (a==1) 
    begin    
        red =tempSecondCathode;
        blue =8'b00000000;
        green =8'b00000000;
    end
    else if (a==2) 
    begin
    red =tempThirdCathode;
    blue = 8'b00000000;
    green =8'b00000000;
    end
    else if (a==3) 
    begin
        red =tempFourthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
     else if (a==4) 
    begin
        red =tempFivethCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    else if (a==5) 
    begin
        red =tempSixthCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    
    else if (a==6)
    begin
        red = tempSeventhCathode;
        blue = 8'b00000000;
        green =8'b00000000;
    end
    else if(a==7)
    begin
        red = redBlock;
        blue =8'b00000000;
        green =8'b00000000;
    end
end

end


//This function check if there is an intersection on tetrisimos
function int checkIntersection ([7:0]cathode, [7:0]redBlock);
foreach (cathode[i]) begin
if(cathode[i]==redBlock[i] &&cathode[i]==1) return 1;
end
return 0;
endfunction

endmodule
