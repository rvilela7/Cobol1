           >>SOURCE FORMAT FREE
           
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 4ParagraphsJumps.
       AUTHOR. Rui Vilela.
       DATE-WRITTEN.  17/04/2024.
       DATA DIVISION.
        FILE SECTION.
        WORKING-STORAGE SECTION.
        LINKAGE SECTION.
       PROCEDURE DIVISION.  *> "Gravity programming :)"
       SubOne.
           DISPLAY "In Paragraph 1"
           PERFORM SubTwo *> Procedures/Calls another paragraph
           DISPLAY "Returned to Paragraph 1"
           PERFORM 2 TIMES *> loop twice
               DISPLAY "Repeat"
           END-PERFORM
           PERFORM SUBFOUR 2 TIMES. *> Call twice the paragraph (procedure)
           STOP RUN.

       SubThree.
           DISPLAY "In Paragraph 3".

       SubTwo.
           DISPLAY "In Paragraph 2"
           PERFORM  SubThree
           DISPLAY "Returned to Paragraph 2".

       SUBFOUR.
           DISPLAY "Repeat4".

       STOP RUN. *> Unreacheable code ...
