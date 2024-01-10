table 50143 Concert_management
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
            trigger OnValidate()
            var
                Conc: Record Venue_Table;
                country1: Record "Country/Region";
            begin
                if Conc.Get("Venue ") then
                    if country1.get(Conc.Country) then
                        Rec.Country := country1.Name;
            end;

        }

        field(10; "Country"; Code[20])
        {
            Caption = 'Country"';
            DataClassification = ToBeClassified;
            Editable = false;

        }

        field(15; "Artist"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Artist;
            trigger OnValidate()
            var
                Art: Record Artist;
            begin
                if Art.Get(Artist) then
                    Rec.Manager_name := Art.Manager_name;
            end;

        }

        field(20; "Manager_name"; Code[20])
        {
            Caption = 'Manager_name"';
            DataClassification = ToBeClassified;


        }

        field(25; "Charge"; Decimal)
        {

            FieldClass = FlowField;
            CalcFormula = lookup(Artist.Charge where(Artist_ID = field(Artist)));

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