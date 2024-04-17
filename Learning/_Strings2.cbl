            >>SOURCE FORMAT FREE

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Strings.
       AUTHOR. Rui Vilela.
       DATE-WRITTEN. 17/04/2024

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
    *>    01 SAMPSTR PIC X(18) VALUE 'eerie beef sneezed'.
    *>    01 NumChars PIC 99 VALUE 0.
    *>    01 NumEs PIC 99 VALUE 0.
    *>    01 FName PIC X(6) VALUE 'Martin'.
    *>    01 MName PIC X(11) VALUE 'Luther King'.
    *>    01 LName PIC X(4) VALUE 'KING'.
    *>    01 FLName PIC X(17).
    *>    01 FMLName PIC X(18).
    *>    01 SStr1 PIC X(7) VALUE 'The egg'.
    *>    01 SStr2 PIC X(9) VALUE 'is #1 and'.
    *>    01 Dest PIC X(33) VALUE 'is the big chicken'.
    *>    01 Ptr PIC 9 VALUE 1.
    *>    01 SStr3 PIC X(3).
    *>    01 SStr4 PIC X(3).
       
       PROCEDURE DIVISION.

    *>    INSPECT SAMPSTR TALLYING NUMCHARS FOR CHARACTERS *> wc
    *>    DISPLAY "# of Chars: " NUMCHARS
    *>    INSPECT SAMPSTR TALLYING NUMES FOR ALL 'e' *> wc 'e'
    *>    DISPLAY "# of E's: " NUMES
       
    *>    DISPLAY FUNCTION UPPER-CASE(SAMPSTR)
    *>    DISPLAY FUNCTION LOWER-CASE(SAMPSTR)
       
    *>    STRING FName DELIMITED BY SIZE
    *>    LName DELIMITED BY SIZE
    *>    INTO FLName
       
    *>    DISPLAY FLName
       
           STOP RUN.
