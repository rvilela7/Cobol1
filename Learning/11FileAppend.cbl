            >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION.
       PROGRAM-ID. FileAppend.
       AUTHOR. Rui Vilela.
       DATE-WRITTEN. 17/04/2024

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CUSTOMERFILE ASSIGN TO "files/Customer.dat"
               ORGANIZATION IS LINE SEQUENTIAL
               ACCESS IS SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD CUSTOMERFILE.  *> File Section!
       01 CUSTOMERDATA.
           02 IDNUM PIC 9(5).
           02 CUSTNAME.
               03 FIRSTNAME PIC X(15).
               03 LASTNAME PIC X(15).

       WORKING-STORAGE SECTION. *> Manual mapping
       01 WSCUSTOMER.
           02 WSIDNUM PIC 9(8).
           02 WSCUSTNAME.
               03 WSFIRSTNAME PIC x(15).
               03 WSLASTNAME PIC x(15).               

       PROCEDURE DIVISION.
       OPEN EXTEND CUSTOMERFILE. *> Similar to T10
           DISPLAY "Customer ID " WITH NO ADVANCING
           ACCEPT IDNUM
           DISPLAY "Customer First Name " WITH NO ADVANCING
           ACCEPT FIRSTNAME
           DISPLAY "Customer Last Name " WITH NO ADVANCING
           ACCEPT LASTNAME
           WRITE CUSTOMERDATA
           END-WRITE.
       CLOSE CUSTOMERFILE.


           STOP RUN.
