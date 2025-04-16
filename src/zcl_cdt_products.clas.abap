CLASS zcl_cdt_products DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS: set_products,
    set_certificates.
ENDCLASS.



CLASS zcl_cdt_products IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    out->write( 'Iniciando a execução' ).
    "me->set_products( ).
    me->set_certificates(  ).
    out->write( 'Encerramento da execução' ).

  ENDMETHOD.
  METHOD set_products.

    types: tt_products type table of zcnsmm_product WITH DEFAULT KEY.

    delete from zcnsmm_product.

    DATA(lt_products) = value tt_products(
    ( matnr = '1' description = 'Celular' language = 'P' )
    ( matnr = '2' description = 'Televisor' language = 'P' )
    ( matnr = '3' description = 'Computador' language = 'P' )

    ( matnr = '1' description = 'Phone' language = 'E' )
    ( matnr = '2' description = 'Television' language = 'E' )
    ( matnr = '3' description = 'Cumputer' language = 'E' )
    ).

    modify zcnsmm_product from table @lt_products.

  ENDMETHOD.

  METHOD set_certificates.
    types: tt_certif type table of zcnsmm_certif WITH DEFAULT KEY.

    delete from zcnsmm_certif.

    DATA(lt_certif) = value tt_certif(
    ( cert_uuid = '1' matnr = '1'  )
    ( cert_uuid = '2' matnr = '2'  )
    ( cert_uuid = '3' matnr = '3'  )
    ).

    modify zcnsmm_certif from table @lt_certif.
  ENDMETHOD.

ENDCLASS.
