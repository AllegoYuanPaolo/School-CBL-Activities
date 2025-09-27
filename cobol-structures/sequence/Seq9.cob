       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEQ9.

       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 len PIC 9(3). 
           01 wid PIC 9(3).
           01 peri PIC 9(3).
           01 dispPeri PIC ZZZ .
       PROCEDURE DIVISION.
       
       DISPLAY "Enter Width: " with no advancing.
       ACCEPT wid.

       display "Enter Length: " with no advancing.
       accept len.

       compute peri = 2 * (len + wid).
       move peri to dispPeri.

       display "______________________________________".
       display "Perimeter: " dispPeri.
       
       
       STOP RUN. 

       