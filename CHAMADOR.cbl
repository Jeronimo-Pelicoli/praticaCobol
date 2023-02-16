      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHAMADOR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-AREA.
           03 WS-RS                PIC 99.
           03 WS-N1                PIC 99.
           03 WS-N2                PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "CHAMADOR"

            INITIALISE WS-AREA

            SET WS-N1              TO 5
            SET WS-N2              TO 3

            CALL 'C:\Users\jpelicol\bin\CHAMADO'
                                   USING WS-AREA

            DISPLAY 'CHAMADO COM SUCESSO: ' WS-RS

            STOP RUN.
       END PROGRAM CHAMADOR.
