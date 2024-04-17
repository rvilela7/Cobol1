            >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION.
       PROGRAM-ID. EditedPictures.
       AUTHOR. Rui Vilela.
       DATE-WRITTEN. 17/04/2024

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       Working-Storage Section.
       01 Startnum Pic 9(8)V99 Value 00001123.55.
       01 nozero Pic ZZZZZZZ9.99. *> THE Z doesn't allow zeros to show
       01 NoZeroPlusComma pic ZZ,ZZZ,ZZ9.99.
       01 DOLLAR PIC $$,$$$,$$9.99. *> Inserts dollar sign in left of value and formats it
       01 BIRTHDAY PIC 9(8) VALUE 12211974.
       01 adate pic 99/99/9999.

       PROCEDURE DIVISION.
           MOVE STARTNUM TO NOZERO
           DISPLAY NOZERO
           MOVE STARTNUM TO NOZEROPLUSCOMMA
           DISPLAY NOZEROPLUSCOMMA
           MOVE STARTNUM TO DOLLAR
           DISPLAY DOLLAR
           MOVE BIRTHDAY TO ADATE
           DISPLAY ADATE



           STOP RUN.
