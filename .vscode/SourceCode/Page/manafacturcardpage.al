page 50102 "manfacturecardpages"
{
    Caption = 'Caption';
    PageType = Card;
    UsageCategory = Documents;
    SourceTable = Manafacture_Table;

    layout
    {
        area(Content)
        {
            group(list)
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
                ApplicationArea = Document;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}