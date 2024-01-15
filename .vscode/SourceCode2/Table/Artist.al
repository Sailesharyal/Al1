table 50141 Artist
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Artist_ID"; Code[2048])
        {
            Caption = 'Artist_ID';
            DataClassification = ToBeClassified;
        }

        field(5; "Manager_name"; Text[2048])
        {
            Caption = 'Managername';
            DataClassification = ToBeClassified;
        }

        field(10; "Charge"; Decimal)
        {

            DataClassification = ToBeClassified;
        }

        field(15; "Gender"; Option)
        {

            DataClassification = ToBeClassified;
            OptionMembers = "",Male,Female,Gay;
        }

        field(20; "Sailesh"; Text[250])
        {
            DataClassification = ToBeClassified;
        }



    }



    keys
    {
        key(PK; "Artist_ID")
        {
            Clustered = true;
        }
    }

}