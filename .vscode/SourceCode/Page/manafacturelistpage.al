page 50101 "manfacturelistpage"
{

    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Manafacture_Table;
    CardPageId = manfacturecardpages;
    Caption = 'Aryalmanfacturelist';

    layout
    {
        area(Content)
        {
            repeater(list)
            {
                field(Manafacture_ID; Rec.Manafacture_ID)
                {
                    ApplicationArea = All;
                }

                field(Vehicle_type2; Rec.Vehicle_type2)
                {
                    ApplicationArea = All;
                }

                field(Year; Rec.Year)
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