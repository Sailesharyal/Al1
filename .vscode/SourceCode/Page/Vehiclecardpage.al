page 50105 "Vehiclecard"
{
    Caption = 'Caption';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Vehicle_Table1;

    layout
    {
        area(Content)
        {
            group(Name)
            {
                field(Vehicle_ID; Rec.Vehicle_ID)
                {
                    ApplicationArea = All;
                }

                field(manfacture; Rec.manfacture)
                {
                    ApplicationArea = All;
                }

                field(Vehicle_Type1; Rec.Vehicle_Type1)
                {
                    ApplicationArea = All;
                }

                field(engine_type; Rec.engine_type)
                {
                    ApplicationArea = All;
                }

                field(Vehicle_year; Rec.engine_type)
                {
                    ApplicationArea = All;
                }




            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}