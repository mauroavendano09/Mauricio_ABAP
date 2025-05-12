CLASS zcl_04_insert DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_04_insert IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.



  DATA  ls_status TYPE zt04_status.
    DATA ls_priority TYPE zt04_priority.
    DATA ls_customer TYPE zt04_customer.
    DATA ls_technician TYPE zt04_technician.

    ls_status = VALUE #( status_code = 'PE'
                        description = 'Pending' ).
    INSERT  zt04_status FROM @ls_status.

     ls_status = VALUE #( status_code = 'CO'
                         description = 'Completed' ).
    INSERT  zt04_status FROM @ls_status.

    ls_priority = VALUE #( priority_code = 'A'
                         description = 'High' ).
    INSERT  zt04_priority FROM @ls_priority.

    ls_priority = VALUE #( priority_code = 'B'
                         Description  = 'Low' ).
    INSERT  zt04_priority FROM @ls_priority.

    ls_customer = VALUE #( customer_id = '79244604'
                         name = 'Mauricio Avendaño'
                         address = ' Carrera 35 7 50'
                         phone = '3114222471' ).
    INSERT  zt04_customer FROM @ls_customer.

    ls_technician = VALUE #( technician_id = '1001'
                         name = 'Carlos Prieto'
                         speciality = 'Expert Ingenery' ).
    Insert  zt04_technician FROM @ls_technician.

    IF sy-subrc = 0.
      out->write( ' record inserted correctly' ).
    ELSE.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
