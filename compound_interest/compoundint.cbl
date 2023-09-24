       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLEINTEREST.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BASE PIC 9(6) VALUE ZEROES.
       01 RATE PIC 99V999 VALUE ZEROES.
       01 TOTAL PIC Z(7) VALUE ZEROES.
       01 YEARS PIC 9(7) VALUE ZEROES.
       01 USERIN PIC X(30) VALUE ZEROES.
       01 FLAG PIC 9 VALUE ZEROES.
       PROCEDURE DIVISION.
       0000-MAIN.
              PERFORM 1000-PROMPT
              UNTIL EXIT.
       1000-PROMPT.
              PERFORM 1001-DISPLAY-MENU
              PERFORM 1002-COMPUTE-TOTAL.
       1001-DISPLAY-MENU.
              DISPLAY "*---SIMPLE INTEREST CALCULATOR---*"
              DISPLAY "Select from the following options:"
              DISPLAY "1) Calculate interest"
              DISPLAY "2) Exit"
              ACCEPT USERIN
              EVALUATE TRUE
                     WHEN USERIN = 2 STOP RUN
              END-EVALUATE.
       1002-COMPUTE-TOTAL.
              DISPLAY "Enter the base amount:"
              ACCEPT BASE
              DISPLAY "Enter the rate amount:"
              ACCEPT RATE
              DISPLAY "Enter years:"
              ACCEPT YEARS
              COMPUTE TOTAL ROUNDED = BASE * (1 + RATE / 100) ** YEARS
              DISPLAY "Your total is: $" TOTAL.

