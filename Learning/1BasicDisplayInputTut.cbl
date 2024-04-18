            >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 1BasicDisplayInputTut.
       AUTHOR. Rui Vilela.
       Date-Written. April 16th 2024.   *>The final dot may be optional
       Date-Written. 18/04/20024.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 UserName PIC X(30) VALUE "You". *> Alphanumeric
       01 Num1 PIC 9 VALUE ZEROS. *>Numerica 1 digit
       01 Num2 PIC 9 VALUE ZEROS.
       77 Total PIC 99 VALUE 0. *> 77 Level for individual vars or 01
       01 SSNum.
              02 SSArea PIC 999.
              02 SSGroup PIC 99.
              02 SSSerial PIC 9999.
       01 PIVALUE CONSTANT AS 3.14.
       *> Comments
       *> ZERO, ZEROES
       *> SPACE, SPACES
       *> HIGH-VALUE, HIGH-VALUES
       *> LOW-VALUE, LOW-VALUES
       PROCEDURE DIVISION.
              DISPLAY "What is your name " WITH NO ADVANCING *> No carrier feed line.
              ACCEPT UserName
              DISPLAY "Hello " USERNAME
              
              MOVE ZERO TO USERNAME
              DISPLAY "Zero Deletion: " USERNAME      
       
              DISPLAY "Enter 2 values to sum "
              ACCEPT NUM1
              ACCEPT NUM2
       
              COMPUTE TOTAL = NUM1 + NUM2
              DISPLAY NUM1 " + " NUM2 " = " TOTAL
              DISPLAY "Enter your social security number "
              ACCEPT SSNUM
            *>   DISPLAY "Area: " SSArea
              Display "SSGroup: " SSGroup
       STOP RUN.
       