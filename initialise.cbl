      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NOME-1.
           03 WS-PRIMEIRO-NOME                  PIC X(6) VALUE 'ANDRE'.
           03 WS-ULTIMO-NOME                    PIC X(5) VALUE 'COSTA'.
       01 WS-NOME-2.
           03 WS-PRIMEIRO-NOME-2                PIC X(6) VALUE 'ANDRE'.
           03 FILLER                            PIC X(5) VALUE 'COSTA'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY 'SAIDA 1: '
            DISPLAY WS-NOME-1.

            DISPLAY 'SAIDA 2: '
            INITIALISE WS-NOME-1
            DISPLAY WS-NOME-1

            DISPLAY 'SAIDA 3: '
            INITIALISE WS-NOME-2
            DISPLAY WS-NOME-2

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
