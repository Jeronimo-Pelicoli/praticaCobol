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
       77 WS-NOME-COMPLETO                PIC X(30) VALUE SPACES.
       01 WS-NOME.
          03 WS-PRIM-NOME                 PIC X(10) VALUE SPACES.
          03 WS-MEIO-NOME                 PIC X(10) VALUE SPACES.
          03 WS-ULTI-NOME                 PIC X(10) VALUE SPACES.
       77 WS-MOSTRA                       PIC X(50) VALUE SPACES.
       01 WS-COUNT.
          03 WS-PONTEIRO                  PIC 9(02) VALUE ZEROS.
          03 WS-TOT-CAMPOS                PIC 9(02) VALUE ZEROS.
          03 WS-TM-1                      PIC 9(02) VALUE ZEROS.
          03 WS-TM-2                      PIC 9(02) VALUE ZEROS.
          03 WS-TM-3                      PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      ********************** FORMA 1 *****************************
            DISPLAY 'FORMA 1'.
            INITIALISE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-COUNT.

            MOVE 'MARIO CEZAR CASTRO'     TO WS-NOME-COMPLETO.

            UNSTRING
                     WS-NOME-COMPLETO
                     DELIMITED BY SPACE
                     INTO WS-PRIM-NOME
                          WS-MEIO-NOME
                          WS-ULTI-NOME
            END-UNSTRING.

            DISPLAY 'WS-PRIM-NOME ' WS-PRIM-NOME.
            DISPLAY 'WS-MEIO-NOME ' WS-MEIO-NOME.
            DISPLAY 'WS-ULTI-NOME ' WS-ULTI-NOME.

      ********************** FORMA 2 *****************************
            DISPLAY 'FORMA 2'.
            INITIALISE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-PONTEIRO.

            MOVE 'MARIO CEZAR CASTRO'     TO WS-NOME-COMPLETO.
            MOVE 3                        TO WS-PONTEIRO.

            UNSTRING
                     WS-NOME-COMPLETO
                     DELIMITED BY SPACE
                     INTO WS-PRIM-NOME
                          WS-MEIO-NOME
                          WS-ULTI-NOME
                     WITH POINTER WS-PONTEIRO
                     TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY 'WS-PRIM-NOME  ' WS-PRIM-NOME.
            DISPLAY 'WS-MEIO-NOME  ' WS-MEIO-NOME.
            DISPLAY 'WS-ULTI-NOME  ' WS-ULTI-NOME.
            DISPLAY 'WS-PONTEIRO   ' WS-PONTEIRO.
            DISPLAY 'WS-TOT-CAMPOS ' WS-TOT-CAMPOS.

      ********************** FORMA 3 *****************************
            DISPLAY 'FORMA 3'.
            INITIALISE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-PONTEIRO.

            MOVE '*MARIO*CEZAR;CASTRO'    TO WS-NOME-COMPLETO.
            MOVE 2                        TO WS-PONTEIRO.

            UNSTRING
                     WS-NOME-COMPLETO
                     DELIMITED BY '*' OR ';'
                     INTO WS-PRIM-NOME
                          WS-MEIO-NOME
                          WS-ULTI-NOME
                     WITH POINTER WS-PONTEIRO
                     TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY 'WS-PRIM-NOME  ' WS-PRIM-NOME.
            DISPLAY 'WS-MEIO-NOME  ' WS-MEIO-NOME.
            DISPLAY 'WS-ULTI-NOME  ' WS-ULTI-NOME.
            DISPLAY 'WS-PONTEIRO   ' WS-PONTEIRO.
            DISPLAY 'WS-TOT-CAMPOS ' WS-TOT-CAMPOS.

      ********************** FORMA 4 *****************************
            DISPLAY 'FORMA 4'.
            INITIALISE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-PONTEIRO.

            MOVE '*MARIO*CEZAR;CASTRO;'    TO WS-NOME-COMPLETO.
            MOVE 2                        TO WS-PONTEIRO.

            UNSTRING
                     WS-NOME-COMPLETO
                     DELIMITED BY '*' OR ';'
                     INTO WS-PRIM-NOME COUNT IN WS-TM-1
                          WS-MEIO-NOME COUNT IN WS-TM-2
                          WS-ULTI-NOME COUNT IN WS-TM-3
                     WITH POINTER WS-PONTEIRO
                     TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY 'WS-PRIM-NOME  ' WS-PRIM-NOME.
            DISPLAY 'WS-MEIO-NOME  ' WS-MEIO-NOME.
            DISPLAY 'WS-ULTI-NOME  ' WS-ULTI-NOME.
            DISPLAY 'WS-PONTEIRO   ' WS-PONTEIRO.
            DISPLAY 'WS-TOT-CAMPOS ' WS-TOT-CAMPOS.
            DISPLAY 'WS-TM-1       ' WS-TM-1.
            DISPLAY 'WS-TM-2       ' WS-TM-2.
            DISPLAY 'WS-TM-3       ' WS-TM-3.

      ********************** FORMA 5 *****************************
            DISPLAY 'FORMA 5'.
            INITIALISE WS-NOME-COMPLETO
                       WS-NOME
                       WS-MOSTRA
                       WS-PONTEIRO.

            MOVE '*MARIO****CEZAR;;;;;;CASTRO;'    TO WS-NOME-COMPLETO.
            MOVE 2                        TO WS-PONTEIRO.

            UNSTRING
                     WS-NOME-COMPLETO
                     DELIMITED BY ALL '*' OR ALL ';'
                     INTO WS-PRIM-NOME COUNT IN WS-TM-1
                          WS-MEIO-NOME COUNT IN WS-TM-2
                          WS-ULTI-NOME COUNT IN WS-TM-3
                     WITH POINTER WS-PONTEIRO
                     TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY 'WS-PRIM-NOME  ' WS-PRIM-NOME.
            DISPLAY 'WS-MEIO-NOME  ' WS-MEIO-NOME.
            DISPLAY 'WS-ULTI-NOME  ' WS-ULTI-NOME.
            DISPLAY 'WS-PONTEIRO   ' WS-PONTEIRO.
            DISPLAY 'WS-TOT-CAMPOS ' WS-TOT-CAMPOS.
            DISPLAY 'WS-TM-1       ' WS-TM-1.
            DISPLAY 'WS-TM-2       ' WS-TM-2.
            DISPLAY 'WS-TM-3       ' WS-TM-3.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
