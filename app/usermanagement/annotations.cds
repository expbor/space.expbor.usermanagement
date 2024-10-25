using UserManagementService as service from '../../srv/usermanagement-service';

annotate service.User with @(
    odata.draft.enabled,
    UI.HeaderInfo : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Benutzer',
        TypeNamePlural : 'Benutzer',
        Title : {
            $Type : 'UI.DataField',
            Value : email,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : createdAt,
        }
    },
);

annotate service.User with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Passwort',
                Value : password,
                
            },
            {
                $Type : 'UI.DataField',
                Label : 'aktiv',
                Value : active,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Bestätigungscode',
                Value : confirmationCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Bestätigungscode Erstellzeit',
                Value : creationTimeConfirmationCode,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Passwort',
            Value : password,
        },
        {
            $Type : 'UI.DataField',
            Label : 'aktiv',
            Value : active,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Bestätigungscode',
            Value : confirmationCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Bestätigungscode Uhrzeit',
            Value : creationTimeConfirmationCode,
        },
    ],
);
