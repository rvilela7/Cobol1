            >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION.
       PROGRAM-ID. 5GetSum. *> Referencing link is case sensitive!!
       AUTHOR. Rui Vilela.
       DATE-WRITTEN. 17/04/2024

       DATA DIVISION.
           LINKAGE SECTION. *> diferent from working-storage! This is a kind of object file
               01 LNUM1 PIC 9 VALUE 5.
               01 LNUM2 PIC 9 VALUE 4.
               01 LSUM1 PIC 99.
       
       PROCEDURE DIVISION USING LNUM1, LNUM2, LSUM1.   *> Notice!!
           COMPUTE LSUM1 = LNUM1 + LNUM2.
           
       EXIT PROGRAM. *> NOTICE!!       
