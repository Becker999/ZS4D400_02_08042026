CLASS LHC_ZR_02FLIGHT DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR flight
        RESULT result,
      validatePrice FOR VALIDATE ON SAVE
            IMPORTING keys FOR flight~validatePrice.
ENDCLASS.

CLASS LHC_ZR_02FLIGHT IMPLEMENTATION.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.
  METHOD validatePrice.

  DATA reported_record LiKE Line of reported-flight.
  DaTA failed_record LiKE line of failed-flight.

  ReAD ENTITIES OF zr_02flight in lOCAL MODE
    ENTITY flight
    FIELDS ( Price )
    WITH CORRESPONDING #(  keys )
     Result DATA(flights).

LooP AT flights INTO DATA(Flight).

if flight-Price <= 0.
reported_record-%tky = flight-%tky.

reported_record-%msg = me->new_message(
id  = '/LRN/S4D00'
number = '101'
Severity = if_abap_behv_message=>severity-error ).

reported_record-%element-price = if_abap_behv=>mk-on.

append reported_record to reported-flight.
*************************************************************************************

failed_record-%tky = FLIGHT-%tky.
appEND failed_record to failed-flight.

endIF.

EndLOOP.

  ENDMETHOD.

ENDCLASS.
