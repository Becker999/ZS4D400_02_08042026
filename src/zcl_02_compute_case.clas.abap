CLASS zcl_02_compute_case DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_compute_case IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA number1 TYPE i.
  DATA number2 TyPE i.
  DATA result TyPE P lENGTH 8 dECIMALS 2.
  DATA op TYPE C LENGTH 1.
  DATA output TYPE String.
  number1 = 8.
  number2 = 0.

  op = '*'.

  Case op.
    when '+'.
    result = number1 + number2.
    when '-'.
    result = number1 - number2.
    when '*'.
    result = number1 * number2.
    when '/'.
    try.
        result = number1 / number2.
*   variante 1
*    Catch cx_sy_zerodivide.
*    output = |Division durch Null nicht möglich!|.
*Varainte2
    Catch cx_root into data(lx_root).
   output = lx_root->get_text( ).
    endtry.

  when others.
    output = |'{ op }' Ist kein gültiger Ouperator! |.
  ENDCASE.
IF output  is INITIAL.
output = | { number1 } { op } { number2 } = { result }|.
ENDIF.

out->write( Output ).

  ENDMETHOD.

ENDCLASS.
