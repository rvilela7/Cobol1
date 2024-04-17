            >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Looping.
       AUTHOR. Rui Vilela.
       DATE-WRITTEN. 17/04/2024

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 IND PIC 9(1) VALUE 0.

       PROCEDURE DIVISION.
       PERFORM OutputData WITH TEST AFTER UNTIL IND > 5 *> While loop style
           GO TO FORLOOP.

        OUTPUTDATA.
           DISPLAY IND.
           ADD 1 TO IND. *> Increment!

       FORLOOP.
           PERFORM OUTPUTDATA2 
               VARYING IND FROM 1 BY 1 *> For loop WITH +1 increment style
               UNTIL IND=5
               STOP RUN.

       OUTPUTDATA2.
           DISPLAY IND.


        *>    STOP RUN.
