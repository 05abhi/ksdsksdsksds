 IDENTIFICATION DIVISION.
 PROGRAM-ID. DATE-PROG.
 DATA DIVISION.
* 
 WORKING-STORAGE SECTION.
 01 WS-MONTH-TABLE  PIC X(36) VALUE
     'JANFEBMARAPRMAYJUNJULAUGSEPNOVDEC'.
 01 FILLER  REDEFINES WS-MONTH-TABLE.
     03 WS-MONTH PIC X(03) OCCURS 12 TIMES.
 01 WS-DATE. 
     03 WS-DATE-YY     PIC 9(02) VALUE ZERO.
     03 WS-DATE-MM     PIC 9(02) VALUE ZERO.
     03 WS-DATE-DD     PIC 9(02) VALUE ZERO.
 01 WS-OUT-DATE.
   ` 03 WS-DATE-DD     PIC 9(02) VALUE ZERO.
     03 FILLER         PIC X(01) VALUE '-'.
     03 WS-DATE-MMM    PIC X(03) VALUE ZERO.
     03 FILLER         PIC X(03) VALUE '-20'.
     03 WS-DATE-YY     PIC 9(02) VALUE ZERO.
*     
 PROCEDURE DIVISION.   
     ACCEPT WS-DATE FROM DATE
     MOVE CORR WS-DATE TO WS-OUT-DATE
     MOVE WS-MONTH(WS-DATE-MM) TO WS-DATE-MMM
     DISPLAY WS-OUT-DATE
     STOP RUN.

