// venue ID, Description, Accomodation Quantity, County 

table 50140 "Venue_Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Venue_ID"; Code[20])
        {
            Caption = 'Venus ID';
            DataClassification = ToBeClassified;
        }

        field(5; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(10; "Accomodation_Qty"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(15; "Country"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }





    }

    keys
    {
        key("Key1"; "Venue_ID")
        {
            Clustered = true;
        }
    }

}