page 50106 "Vehiclelistpage"
{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vehicle_Table1;
    Caption = 'Aryalvehiclelist';
    CardPageId = Vehiclecard;

    layout
    {
        area(Content)
        {
            repeater(list)
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

                field(Vehicle_year; Rec.Vehicle_year)
                {
                    ApplicationArea = All;
                }

                field(Time; Rec.Time)
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