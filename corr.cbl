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
       01 WS-LAYOUT-1.
          03 WS-NOME                    PIC X(30).
          03 WS-ENDERECO                PIC X(60).
          03 WS-TELEFONE                PIC X(20).
          03 WS-EMAIL                   PIC X(50).
          03 WS-CIDADE                  PIC X(30).
          03 WS-ESTADO                  PIC X(30).

       01 WS-LAYOUT-2.
          03 WS-NOME                    PIC X(30).
          03 WS-ENDERECO                PIC X(60).
          03 WS-TELEFONE                PIC X(20).
          03 WS-EMAIL                   PIC X(50).
          03 WS-ESTADO                  PIC X(30).
          03 WS-CIDADE                  PIC X(30).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE 'ANDRE COSTA'          TO WS-NOME      OF WS-LAYOUT-1
            MOVE 'RUA 10'               TO WS-ENDERECO  OF WS-LAYOUT-1
            MOVE '333-2221'             TO WS-TELEFONE  OF WS-LAYOUT-1
            MOVE 'TESTE@TESTE'          TO WS-EMAIL     OF WS-LAYOUT-1
            MOVE 'SAO JOSE'             TO WS-CIDADE    OF WS-LAYOUT-1
            MOVE 'SAO PAULO'            TO WS-ESTADO    OF WS-LAYOUT-1

            MOVE CORR WS-LAYOUT-1            TO WS-LAYOUT-2
            DISPLAY 'WS-LAYOUT-1: '     LENGTH OF WS-LAYOUT-1
            DISPLAY 'WS-LAYOUT-2: '     LENGTH OF WS-LAYOUT-2

            DISPLAY 'WS-LAYOUT-1: '     WS-LAYOUT-1
            DISPLAY 'WS-LAYOUT-2: '     WS-LAYOUT-2

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
