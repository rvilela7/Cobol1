            >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION.
       PROGRAM-ID. 5CallGetSum.
       AUTHOR. Rui Vilela.
       DATE-WRITTEN. 17/04/2024

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       *> USE SAME vars
           01 NUM1 PIC 9 VALUE 5.
           01 NUM2 PIC 9 VALUE 4.
           01 SUM1 PIC 99.
    
       PROCEDURE DIVISION.
           CALL '5GetSum' USING NUM1, NUM2, SUM1 *> Notice name of object! And case of file!
           DISPLAY NUM1 " + " NUM2 " = " SUM1


           STOP RUN.
