       *> Notice that a compiler note appears if not alligned after col 7
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 1BasicDisplayInputTut.
       AUTHOR. Rui Vilela.
       DATE-WRITTEN. April 16th 2024
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 UserName PIC X(30) VALUE "You". *> Alphanumeric
       01 Num1 PIC 9 VA2LUE ZEROS.
       01 Num2 PIC 9 VALUE ZEROS. *> Can I put comment here?
       01 Total PIC 99 VALUE 0.
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
              DISPLAY "What is your name " WITH NO ADVANCING
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
              DISPLAY "Area " SSArea
              
       STOP RUN.
       