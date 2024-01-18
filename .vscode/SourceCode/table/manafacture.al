table 50101 "Manafacture_Table"
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Manafacture_ID"; Code[20])
        {
            Caption = 'Manfacture ID';
            DataClassification = ToBeClassified;
        }

        field(5; "Vehicle_type2"; Option)
        {
            Caption = 'Vehicle_type';
            OptionMembers = "",Car,Bike,Truck;
            DataClassification = ToBeClassified;


        }

        field(10; "Year"; Date)
        {
            Caption = 'Year';
            DataClassification = ToBeClassified;
        }





    }

    keys
    {
        key(key1; "Manafacture_ID")
        {
            Clustered = true;
        }
    }

}