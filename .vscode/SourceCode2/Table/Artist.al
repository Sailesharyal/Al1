table 50141 Artist
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Artist_ID"; Code[20])
        {
            Caption = 'Artist_ID';
            DataClassification = ToBeClassified;
        }

        field(5; "Manager_name"; Text[100])
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


    }

    keys
    {
        key(PK; "Artist_ID")
        {
            Clustered = true;
        }
    }

}