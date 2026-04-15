CLASS zcl_02_instances DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_instances IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA Commection TYPE REF TO lcl_connection.
  DATA Connections Type TabLE of Ref to LCL_Connection.

  Commection = new lcl_connection( ).
  Commection->carrier_id = 'LH'.
  Commection->connection_id = '0400'.
  append Commection to Connections.

  Commection = new lcl_connection( ).
  Commection->carrier_id = 'AA'.
  Commection->connection_id = '0017'.
  append Commection to Connections.

  Commection = new lcl_connection( ).
  Commection->carrier_id = 'SQ'.
  Commection->connection_id = '0001'.
  append Commection to Connections.


  ENDMETHOD.
ENDCLASS.
