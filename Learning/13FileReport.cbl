       >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION.
       PROGRAM-ID. FileReport.
       AUTHOR. Rui Vilela.
       DATE-WRITTEN. 17/04/2024

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CustomerReport ASSIGN TO "files/CustomerReport.rpt"
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT CUSTOMERFILE ASSIGN TO "files/Customer.dat"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD CUSTOMERREPORT. 
       01 Printline PIC X(44).

       FD CUSTOMERFILE.
       01 CUSTOMERDATA.
           02 IDNUM PIC 9(5).
           02 CUSTNAME.
               03 FIRSTNAME PIC X(15).
               03 LASTNAME PIC X(15).
           88 WSEOF VALUE HIGH-VALUE. *> Use a condition instead of VALUE

       WORKING-STORAGE SECTION. 
       01 PAGEHEADING.
           02 FILLER PIC X(13) VALUE "Customer List".
       01 PAGEFOOTING.
           02 FILLER PIC X(15) VALUE SPACE.
           02 FILLER PIC X(7) VALUE "Page : ".
           02 PRNPAGENUM PIC Z9.
       01 HEADS PIC X(36) VALUE "IDNum    FirstName    LastName".
       01 CUSTOMERDETAILLINE.
           02 FILLER PIC X VALUE SPACE.
           02 PrncustID PIC 9(5).
           02 FILLER PIC X(4) VALUE SPACE.
           02 PRNFIRSTNAME PIC X(15).
           02 FILLER PIC XX VALUE SPACE.
           02 PRNLASTNAME PIC X(15).
       01 REPORTFOOTING PIC X(13) VALUE "END OF REPORT".
       01 LINECOUNT PIC 99 VALUE ZERO.
           88 NEWPAGEREQUIRED VALUE 40 THRU 99.
       01 PAGECOUNT PIC 99 VALUE ZERO.
      
       PROCEDURE DIVISION.
           OPEN INPUT CUSTOMERFILE.
           OPEN OUTPUT CUSTOMERREPORT.
           PERFORM PRINTPAGEHEADING.
           READ CUSTOMERFILE
               AT END SET WSEOF TO TRUE
           END-READ
           PERFORM PRINTREPORTBODY UNTIL WSEOF
           WRITE PRINTLINE FROM REPORTFOOTING AFTER ADVANCING 5 LINES.
           CLOSE CUSTOMERFILE, CUSTOMERREPORT.
           STOP RUN.

       PRINTPAGEHEADING.
           WRITE PRINTLINE FROM PAGEHEADING AFTER ADVANCING PAGE
           WRITE PRINTLINE FROM HEADS AFTER ADVANCING 5 LINES
           MOVE 3 TO LineCount
           ADD 1 TO PAGECOUNT.
       
       PRINTREPORTBODY.
           IF NEWPAGEREQUIRED
               MOVE PAGECOUNT TO PRNPAGENUM
               WRITE PRINTLINE FROM PAGEFOOTING AFTER ADVANCING 5 LINES
               PERFORM PRINTPAGEHEADING
           END-IF

           MOVE IDNUM TO PrncustID
           MOVE FIRSTNAME TO PRNFIRSTNAME
           MOVE LASTNAME TO PRNLASTNAME
           WRITE PRINTLINE FROM CUSTOMERDETAILLINE AFTER ADVANCING 1 LINE
           ADD 1 TO LINECOUNT
           READ CUSTOMERFILE
               AT END SET WSEOF TO TRUE
           END-READ.
