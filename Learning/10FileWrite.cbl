            >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION.
       PROGRAM-ID. FileWrite.
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
       
       OPEN OUTPUT CUSTOMERFILE.
        *>    MOVE 00001 TO IDNUM.
        *>    MOVE 'Doug' TO FIRSTNAME.
        *>    MOVE 'THOMAS' TO LASTNAME.
        *>    WRITE CUSTOMERDATA
        *>    END-WRITE.

           PERFORM VARYING IDNUM FROM 1 BY 1 UNTIL IDNUM > 60
           MOVE IDNUM TO IDNUM
           MOVE 'Doug' TO FIRSTNAME
           MOVE 'THOMAS' TO LASTNAME
           WRITE CUSTOMERDATA
           END-PERFORM

       CLOSE CUSTOMERFILE.

       STOP RUN.
