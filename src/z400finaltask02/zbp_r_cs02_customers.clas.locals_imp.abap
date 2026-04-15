CLASS lhc_zr_cs02_customers DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR ZrCs02Customers
        RESULT result,
      getCity FOR VALIDATE ON SAVE
        IMPORTING keys FOR ZrCs02Customers~getCity.
ENDCLASS.

CLASS lhc_zr_cs02_customers IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.



  METHOD getCity.

    DATA City_upd TYPE TABLE FOR UPDATE zr_cs02_customers.

    READ ENTITIES OF zr_cs02_customers IN LOCAL MODE
    ENTITY ZrCs02Customers
    FIELDS ( Postcode )
    WITH CORRESPONDING #( keys )
    RESULT DATA(lt_CityRES).

    LOOP AT lt_CityRES INTO DATA(ls_City).
      SELECT SINGLE FROM  zcs02_postcode FIELDS city
      WHERE Postcode = @ls_City-Postcode
      INTO ( @ls_City-City ).

      MODIFY lt_cityres FROM ls_city.

      City_upd = CORRESPONDING #( lt_cityres ).

      MODIFY ENTITIES OF zr_cs02_customers IN LOCAL MODE
      ENTITY ZrCs02Customers UPDATE FIELDS ( city )
WITH City_upd REPORTED DATA(reported_Records).

    ENDLOOP.



  ENDMETHOD.

ENDCLASS.
