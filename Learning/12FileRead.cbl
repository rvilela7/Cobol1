            >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION.
       PROGRAM-ID. FileRead.
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
       FD CUSTOMERFILE. 
       01 CUSTOMERDATA.
           02 IDNUM PIC 9(5).
           02 CUSTNAME.
               03 FIRSTNAME PIC X(15).
               03 LASTNAME PIC X(15).

       WORKING-STORAGE SECTION. 
       01 WSCUSTOMER.
           02 WSIDNUM PIC 9(8).
           02 WSCUSTNAME.
               03 WSFIRSTNAME PIC x(15).
               03 WSLASTNAME PIC x(15).     
       01 WSEOF PIC A(1). *>A(1) EOF flag. Applies only to ALphanumeric wo/ spec chars

       PROCEDURE DIVISION.
       OPEN INPUT CUSTOMERFILE. *> OUPUT, EXTEND, INPUT
           PERFORM UNTIL WSEOF='Y'
               READ CUSTOMERFILE INTO WSCUSTOMER
                   AT END MOVE 'Y' TO WSEOF
                   NOT AT END DISPLAY WSCUSTOMER
               END-READ
           END-PERFORM
       CLOSE CUSTOMERFILE.

           STOP RUN.
