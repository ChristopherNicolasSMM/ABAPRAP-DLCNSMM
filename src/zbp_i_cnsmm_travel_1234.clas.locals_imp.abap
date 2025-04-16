CLASS lhc_ZI_CNSMM_TRAVEL_1234 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_cnsmm_travel_1234 RESULT result.

ENDCLASS.

CLASS lhc_ZI_CNSMM_TRAVEL_1234 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
