       IDENTIFICATION DIVISION.
       PROGRAM-ID. GUESSGAME.

       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01  MYSTERY-NUMBER     PIC 9(3) VALUE 42. *> À remplacer par un random
       01  USER-GUESS         PIC 9(3).
       01  ATTEMPTS           PIC 9(3) VALUE 0.
       01  GAME-OVER          PIC X VALUE "N".

       PROCEDURE DIVISION.
       DISPLAY "=== DEVINE LE NOMBRE ===".
       DISPLAY "Je pense à un nombre entre 1 et 100...".

       PERFORM UNTIL GAME-OVER = "Y"
           DISPLAY "Entre ta proposition : "
           ACCEPT USER-GUESS
           ADD 1 TO ATTEMPTS

           IF USER-GUESS < MYSTERY-NUMBER THEN
               DISPLAY "Trop petit !"
           ELSE IF USER-GUESS > MYSTERY-NUMBER THEN
               DISPLAY "Trop grand !"
           ELSE
               DISPLAY "Bravo ! Tu as trouvé en " ATTEMPTS " essais !"
               MOVE "Y" TO GAME-OVER
           END-IF
       END-PERFORM.

       DISPLAY "Merci d'avoir joué !".
       STOP RUN.
