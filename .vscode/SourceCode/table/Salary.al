table 50136 Taxcalculation
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Salary"; Decimal)
        {
            Caption = 'Salary';
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(PK; "Salary")
        {
            Clustered = true;
        }
    }

}