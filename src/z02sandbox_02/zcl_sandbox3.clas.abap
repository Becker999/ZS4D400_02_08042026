CLASS zcl_sandbox3 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_SANDBOX3 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA connection TYPE REF TO lcl_connection.
    DATA connections TYPE TABLE OF REF TO lcl_connection.

* First Instance
**********************************************************************

    connection = NEW #(  ).
    Try.
connection->set_attributes(
    i_carrier_id    = 'LH'
    i_connection_id = '0400' ).
    APPEND connection TO connections.
     CATCH cx_root INTO DATA(lx_root).
        out->write( lx_root->get_text( ) ).
    ENDTRY.

* Second Instance
**********************************************************************
    connection = NEW #(  ).
Try.
    connection->set_attributes(
    i_carrier_id    = 'AA'
    i_connection_id = '0017' ).

    APPEND connection TO connections.

     CATCH cx_root INTO lx_root.
        out->write( lx_root->get_text( ) ).
    ENDTRY.

* Third Instance
**********************************************************************
    connection = NEW #(  ).
Try.
connection->set_attributes(
    i_carrier_id    = 'LH'
    i_connection_id = '0001' ).
    APPEND connection TO connections.

      CATCH cx_root INTO lx_root.
        out->write( lx_root->get_text( ) ).
    ENDTRY.

    Loop AT connections INTO connection.
      out->write( connection->get_output( ) ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
