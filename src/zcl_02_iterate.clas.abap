CLASS zcl_02_iterate DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_iterate IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS max_Count TYPE i VALUE 25.
    DATA numbers TYPE TABLE OF i.
    DATA output TYPE Table of String.

    DO max_count TIMES.

      CASE sy-index.
        WHEN 1.
          APPEND 0 TO numbers.
        WHEN 2.
          APPEND 1 TO numbers.
        WHEN OTHERS.
          APPEND numbers[  sy-index - 2 ]
                + numbers[ sy-index - 1 ]
                          TO numbers.
      ENDCASE.

    ENDDO.

    LOOP AT numbers INTO DATA(number).

      APPEND |{  sy-tabix WIDTH = 4 } { number WIDTH = 10 ALIGN = RIGHT }| TO output.

    ENDLOOP.

    out->write(
    EXPORTING
      data = output
       name = | Die ersten { max_count } zahlen der FIbonatcci folge | ).


  ENDMETHOD.
ENDCLASS.
