            >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION.
       PROGRAM-ID. DecimalArithmetic.
       AUTHOR. Rui Vilela.
       DATE-WRITTEN. 17/04/2024

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 PRICE PIC 9(4)v99.
       01 TAXRATE PIC v999 VALUE .075. *> notice formating
       01 FullPrice PIC 9(4)v99.
       PROCEDURE DIVISION.
       DISPLAY "Enter the price: " WITH NO ADVANCING
       ACCEPT PRICE
       COMPUTE FULLPRICE ROUNDED = price + (price * TAXRATE)
       DISPLAY "Price + Tax: " FULLPRICE.
       
       STOP RUN.
