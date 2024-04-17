       *> Arithmetic operations
       
       IDENTIFICATION DIVISION.
       *> This was produced automatically by identification snippet
       PROGRAM-ID. ArithmeticTut2.
       AUTHOR. Rui Vilela.
       INSTALLATION.  where.
       DATE-WRITTEN.  16/04/2024.
       DATE-COMPILED. 16/04/2024.
       SECURITY.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION. 
       SOURCE-COMPUTER. pc.
       OBJECT-COMPUTER. pc.
       SPECIAL-NAMES.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       DATA DIVISION.
        FILE SECTION.
        WORKING-STORAGE SECTION.
        01 SAMPLEDATA PIC X(10) VALUE "Stuff".
        01 JUSTLetters PIC AAA VALUE "ABC". *> Just Letters
        01 JUSTNUMS PIC 9(4) VALUE 1234. *> Nums
        01 SIGNEDINT PIC S9(4) VALUE -1234. *> Signed
        01 PAYCHECK PIC 9(4)V99 VALUE ZERO. *> 9999.99
        01 CUSTOMER.
           02 IDENT PIC 9(3). *> Notice change of level!
           02 CUSTNAME PIC X(20).
           02 DATEOFBIRTH.
               03 MOB PIC 99.
               03 DOB PIC 99.
               03 YOB PIC 9(4).
       01 NUM1 PIC 9 VALUE 5.
       01 NUM2 PIC 9 VALUE 5.
       01 NUM3 PIC 9 VALUE 5.
       01 ANS PIC S99V99 VALUE ZERO.
       01 REM PIC 9V99.

        LINKAGE SECTION.
       PROCEDURE DIVISION.
       MOVE "More Stuff" TO SAMPLEDATA
       MOVE "123" TO SAMPLEDATA
       MOVE 123 TO SAMPLEDATA
       DISPLAY SAMPLEDATA
       DISPLAY PAYCHECK
       MOVE "123Bob Smith           12211974" TO *> ENTER IN one LINE, notice SPACES
       CUSTOMER
       *> DISPLAY CUSTOMER
       DISPLAY CUSTNAME
       DISPLAY MOB "/" DOB "/" YOB
	   *> --------------------------------------------------------------
       MOVE ZERO TO SAMPLEDATA
       DISPLAY SAMPLEDATA

       MOVE SPACE TO SAMPLEDATA
       DISPLAY SAMPLEDATA

       MOVE HIGH-VALUE TO SAMPLEDATA
       DISPLAY " " SAMPLEDATA

       MOVE LOW-VALUE TO SAMPLEDATA
       DISPLAY SAMPLEDATA

       MOVE QUOTE TO SAMPLEDATA
       DISPLAY SAMPLEDATA

       MOVE ALL "2" TO SAMPLEDATA
       DISPLAY SAMPLEDATA
       
       *> --------------------------------------------------------------
       DISPLAY "Num1: " NUM1 ", Num2: " NUM2 ", Num3: " NUM3

       ADD NUM1 TO num2 GIVING ANS *> 2 reserved keyword depends of first
       DISPLAY ANS
       SUBTRACT NUM1 FROM NUM2 GIVING ANS
       DISPLAY ANS
       MULTIPLY NUM1 BY NUM2 GIVING ANS
       DISPLAY ANS
       DIVIDE NUM1 INTO NUM2 GIVING ANS REMAINDER REM
       DISPLAY ANS
       DIVIDE NUM1 INTO NUM2 GIVING ANS REMAINDER REM
       DISPLAY ANS
       DISPLAY "Remainder " REM

       *> --------------------------------------------------------------
       
       ADD NUM1, NUM2 TO NUM3 GIVING ANS
       ADD NUM1, NUM2, NUM3 GIVING ANS
       DISPLAY ANS
       COMPUTE ANS = NUM1 + NUM2
       COMPUTE ANS = NUM1 - NUM2
       COMPUTE ANS = NUM1 * NUM2
       COMPUTE ANS = NUM1 / NUM2
       DISPLAY ANS
       COMPUTE ANS = NUM1 ** 2
       DISPLAY ANS
       COMPUTE ANS = (3 + 5) * 5
       DISPLAY ANS
       COMPUTE ANS = 3 + 5 * 5
       DISPLAY ANS
       COMPUTE ANS ROUNDED = 3.0 + 2.005
       DISPLAY ANS

       STOP RUN.
