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
           03 WS-NUM-1                  PIC S9(08)V99.
           03 WS-NUM-2                  PIC S9(08)V99.
           03 WS-TEXTO                  PIC X(20).
      **********************************************
           03 WS-STATUS                 PIC 9.
      **********************************************
           03 WS-LINHA                  PIC 99.
           03 WS-CODIGO                 PIC 9.
           03 WS-CAMPO                  PIC 99.
           03 WS-DADO                   PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM P100-INICIALIZA
           PERFORM P500-CALC
           PERFORM P900-FIM
           .
       P000-ERRO.
           DISPLAY 'ERRO DE PROCESSAMENTO.'
           PERFORM P900-FIM
           .
       P100-INICIALIZA.
           INITIALISE WS-VARIAVEIS
           .
       P500-CALC.

           SET WS-NUM-1                 TO 2
           SET WS-NUM-2                 TO 5

           COMPUTE WS-NUM-1 = WS-NUM-1 + (WS-NUM-2 * 3)
                                        ON SIZE ERROR PERFORM P000-ERRO
           END-COMPUTE

           MOVE 'TEXTO'                 TO WS-TEXTO

           IF WS-NUM-1 IS NUMERIC THEN
               DISPLAY 'CAMPO NUMERICO: ' WS-NUM-1
           ELSE
               DISPLAY 'CAMPO NAO NUMERICO'
               PERFORM P000-ERRO
           END-IF

      **********************************************

           DISPLAY 'INFORME UM VALOR PARA STATUS: '
           ACCEPT WS-STATUS

           IF WS-STATUS = 1
               DISPLAY 'HOMEM'.
           IF WS-STATUS = 2
               DISPLAY 'MULHER'.
           IF WS-STATUS = 3
               DISPLAY 'OUTRO'.
           IF WS-STATUS GREATER 3
               PERFORM P000-ERRO
           END-IF

      **********************************************

            DISPLAY 'INFORME O NUMERO DE LINHAS: '
            ACCEPT WS-LINHA

            DISPLAY 'INFORME O NUMERO DE CODIGOS: '
            ACCEPT WS-CODIGO

            DISPLAY 'INFORME O NUMERO DE CAMPOS: '
            ACCEPT WS-CAMPO

            DISPLAY 'INFORME O NUMERO DE DADOS: '
            ACCEPT WS-DADO

            IF WS-LINHA GREATER 30
                DISPLAY 'OK, LINHA MAIOR QUE 30: ' WS-LINHA
            ELSE
                DISPLAY 'NO, LINHA MENOR QUE 30: ' WS-LINHA.
            IF WS-CODIGO = 2
                DISPLAY 'OK, CODIGO CORRETO'
            ELSE
                DISPLAY 'NO, CODIGO INCORRETO'.
            IF WS-CAMPO NOT LESS WS-DADO
                DISPLAY 'OK, CAMPOS MAIOR QUE DADOS'
            ELSE
                DISPLAY 'NO, CAMPOS MENOR QUE DADOS'
            END-IF

      **********************************************

           COMPUTE WS-NUM-1 = WS-NUM-2 * -1

           IF WS-NUM-1 IS POSITIVE THEN
               DISPLAY 'NUMERO POSITIVO'
           ELSE
               DISPLAY 'NAO E POSITIVO'
           END-IF

           IF WS-NUM-2 GREATER THAN (WS-NUM-1 ** 2 - 4 * WS-NUM-2)
               DISPLAY 'WS-NUM-2 MAIOR QUE : ' WS-NUM-2
           ELSE
               DISPLAY 'WS-NUM-2 MENOR QUE : ' WS-NUM-2
           END-IF

           .
       P900-FIM.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
