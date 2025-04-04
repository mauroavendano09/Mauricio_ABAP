CLASS zcl_proyecto_agora04 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.   " para poder ejecutar ver por pantalla los resultados
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_proyecto_agora04 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.  " Metodo de interfaces

    DATA(lv_char) = 'c'.
    IF lv_char EQ 'A'.
          out->write(  lv_char ).
      elseif lv_char eq 'b'.
        out->write(  lv_char ).
        elseif lv_char eq 'c'.
        out->write(  lv_char ).

    ENDIF.


*    """" CASE / ENDCASE
*
*    DATA(lv_c) = cl_abap_random_int=>create( seed = cl_abap_random=>seed (  )
*                min = 1
*                max = 3 )->get_next( ).
*
*
 ENDMETHOD.

ENDCLASS.
