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
       01 WS-VARIAVEIS.
           03 WS-MES                      PIC 99.
           03 WS-STATUS                   PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            INITIALISE WS-VARIAVEIS

            DISPLAY 'INFORME UM NUMERO DE MES: '
            ACCEPT WS-MES

            DISPLAY 'INFORME UM NUMERO DE STATUS: '
            ACCEPT WS-STATUS

            EVALUATE WS-MES
               WHEN 01
                   IF WS-STATUS GREATER 15
                       DISPLAY 'MAIOR QUE 15 DE JANEIRO'
                    ELSE
                        DISPLAY 'MENOR QUE 15 DE JANEIRO'
               WHEN 02
                    IF WS-STATUS GREATER 15
                       DISPLAY 'MAIOR QUE 15 DE FEVEREIRO'
                    ELSE
                        DISPLAY 'MENOR QUE 15 DE JANEFEVEREIROIRO'
               WHEN 03
                    IF WS-STATUS GREATER 15
                       DISPLAY 'MAIOR QUE 15 DE MARCO'
                    ELSE
                        DISPLAY 'MENOR QUE 15 DE MARCO'
               WHEN OTHER
                   DISPLAY 'MES INVELIDO!'
            END-EVALUATE

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
