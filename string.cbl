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
       77 WS-CONTEUDO                   PIC X(40) VALUE SPACES.
       77 WS-TEXTO                      PIC X(40) VALUE SPACES.
       77 WS-PONTEIRO                   PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            INITIALISE WS-CONTEUDO
                       WS-TEXTO.
            STRING
                   'ANDRE'
                   ' '
                   'COSTA'
                   DELIMITED BY SIZE INTO WS-CONTEUDO
            END-STRING.

            DISPLAY WS-CONTEUDO.

     ********************forma 2**************************************
            INITIALISE WS-CONTEUDO
                       WS-TEXTO.

            MOVE 'O ANDRE COSTA ESTA MINISTRANDO CURSO' TO WS-TEXTO.
            STRING
                   WS-TEXTO(1:7)
                   ' '
                   WS-TEXTO(15:22)
                   DELIMITED BY SIZE INTO WS-CONTEUDO
            END-STRING
            DISPLAY WS-CONTEUDO.

      *******************forma 3************************************
            INITIALISE WS-CONTEUDO
                       WS-TEXTO.

            MOVE 'O ANDRE COSTA ESTA MINISTRANDO CURSO' TO WS-TEXTO.
            STRING
                   WS-TEXTO

                   DELIMITED BY SPACE INTO WS-CONTEUDO
            END-STRING
            DISPLAY WS-CONTEUDO.
      *******************forma 4************************************
            INITIALISE WS-CONTEUDO
                       WS-TEXTO.

            MOVE 'O ESTA MINISTRANDO CURSO' TO WS-TEXTO.
            SET WS-PONTEIRO                 TO 3
            STRING
                   'ANDRE COSTA'
                   DELIMITED BY SIZE INTO WS-TEXTO
                   WITH POINTER WS-PONTEIRO
            END-STRING
            DISPLAY WS-TEXTO.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
