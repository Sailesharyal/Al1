table 50105 "Vehicle_Table1"
{
    DataClassification = ToBeClassified;
    Caption = 'Aryalvehicletable';

    fields
    {
        field(1; "Vehicle_ID"; Code[20])
        {
            Caption = 'Vehicle_ID';
            DataClassification = ToBeClassified;
        }

        field(5; "manfacture"; Code[20])
        {
            // Caption = 'Manfacture';
            DataClassification = ToBeClassified;
            TableRelation = Manafacture_Table;
            trigger OnValidate()
            var
                manu: Record "Manafacture_Table";
            begin
                if manu.Get(manfacture) then
                    //   Vehicle_Type1 := Vehicle_Type;
                    Vehicle_year := manu.Year;
            end;
        }



        field(10; "Vehicle_Type1"; Option)
        {
            // Caption = 'Vehicle_Type';

            OptionMembers = "",Car,Bike,Truck;
            FieldClass = FlowField;
            CalcFormula = lookup("Manafacture_Table".Vehicle_type2 where(Manafacture_ID = field(manfacture)));

        }
        //Engine Type Year 

        field(15; "engine_type"; Option)
        {
            // Caption = 'engine_type';
            DataClassification = ToBeClassified;
            OptionMembers = "",Electric,hybrid,Petrol;

        }

        field(20; "Vehicle_year"; Date)
        {
            // Caption = 'Vehicle_year';
            DataClassification = ToBeClassified;



        }

        field(25; "Time"; Duration)
        {
            DataClassification = ToBeClassified;
        }
















    }

    keys
    {
        key(key1; "Vehicle_Id")
        {
            Clustered = true;
        }
    }



}