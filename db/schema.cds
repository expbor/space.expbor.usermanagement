namespace space.expbor.usermanagement;

using {managed} from '@sap/cds/common';

entity User : managed {
    key ID                           : UUID;
        email                        : String;
        password                     : String;
        active                       : Boolean;
        confirmationCode             : String;
        creationTimeConfirmationCode : DateTime;
}
