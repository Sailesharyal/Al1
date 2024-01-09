table 50133 Concert_management
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Concert_ID"; Code[20])
        {
            Caption = 'Concert_ID';
            DataClassification = ToBeClassified;
        }

        field(5; "Venue "; code[20])
        {
            Caption = 'VENUE';
            DataClassification = ToBeClassified;
            TableRelation = Venue_Table;
        }

        field(10; "Country"; Code[20])
        {
            Caption = 'Country"';
            DataClassification = ToBeClassified;
        }

        field(15; "Artist"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(20; "Manager_name"; Code[20])
        {
            Caption = 'Man"Manager_name"';
            DataClassification = ToBeClassified;
        }

        field(25; "Charge"; Decimal)
        {
            DataClassification = ToBeClassified;

        }







    }

    keys
    {
        key(key1; "Concert_ID")
        {
            Clustered = true;
        }
    }

}