CLASS zcl_rap_eml_mode DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_eml_mode IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    " Step 1 - Read
*    READ ENTITIES OF ZI_RAP_Travel_Mode
*    ENTITY Travel
*    FROM VALUE #( ( TravelUUID = '61D500C08C1F4E5717000602C3EDAB69' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

*    " Step 2 - Read with Fields
*    READ ENTITIES OF ZI_RAP_Travel_Mode
*    ENTITY Travel
*    FIELDS ( AgencyID CustomerID )
*    WITH VALUE #( ( TravelUUID = '61D500C08C1F4E5717000602C3EDAB69' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

    " Step 3 - Read all Fields
*    READ ENTITIES OF ZI_RAP_Travel_Mode
*    ENTITY Travel
*    ALL FIELDS
*    WITH VALUE #( ( TravelUUID = '61D500C08C1F4E5717000602C3EDAB69' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

*    " Step 4 - Read By Association
*    READ ENTITIES OF ZI_RAP_Travel_Mode
*    ENTITY Travel BY \_Booking
*    ALL FIELDS
*    WITH VALUE #( ( TravelUUID = '61D500C08C1F4E5717000602C3EDAB69' ) )
*    RESULT DATA(bookings).
*
*    out->write( bookings ).

*    " Step 5 - Unsuccessful READ
*    READ ENTITIES OF ZI_RAP_Travel_Mode
*    ENTITY Travel
*    ALL FIELDS
*    WITH VALUE #( ( TravelUUID = '11111111111111111111111111111111' ) )
*    RESULT DATA(travels)
*    FAILED DATA(failed)
*    REPORTED DATA(reported).
*
*    out->write( travels ).
*    out->write( failed ).
*    out->write( reported ).

    " Step 6 - Modify Update
*    MODIFY ENTITIES OF ZI_RAP_Travel_Mode
*    ENTITY Travel
*    UPDATE SET FIELDS WITH VALUE
*        #( ( TravelUUID = '61D500C08C1F4E5717000602C3EDAB69'
*             Description = 'I like RAP@openSAP' ) )
*    FAILED DATA(failed)
*    REPORTED DATA(reported).
*
*    " Step 6b
*    COMMIT ENTITIES
*    RESPONSE OF ZI_RAP_Travel_Mode
*    FAILED DATA(failed_commit)
*    REPORTED DATA(reported_commit).
*
*    out->write( 'Update done!' ).

    " Step 7 - MODIFY Create
*    MODIFY ENTITIES OF ZI_RAP_Travel_Mode
*      ENTITY travel
*        CREATE
*          SET FIELDS WITH VALUE
*            #( ( %cid        = 'MyContentID_1'
*                 AgencyID    = '70012'
*                 CustomerID  = '14'
*                 BeginDate   = cl_abap_context_info=>get_system_date( )
*                 EndDate     = cl_abap_context_info=>get_system_date( ) + 10
*                 Description = 'I like RAP@openSAP' ) )
*
*     MAPPED DATA(mapped)
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*    out->write( mapped-travel ).
*
*    COMMIT ENTITIES
*      RESPONSE OF ZI_RAP_Travel_Mode
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Create done' ).

    " Step 8 - MODIFY Delete
    MODIFY ENTITIES OF ZI_RAP_Travel_Mode
      ENTITY travel
        DELETE FROM
          VALUE
            #( ( TravelUUID  = '120511AA078B1EEB87B662391EDE44F1' ) )

     FAILED DATA(failed)
     REPORTED DATA(reported).

    COMMIT ENTITIES
      RESPONSE OF ZI_RAP_Travel_Mode
      FAILED     DATA(failed_commit)
      REPORTED   DATA(reported_commit).

    out->write( 'Delete done' ).

  ENDMETHOD.


ENDCLASS.
