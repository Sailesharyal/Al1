page 50120 "Venuslistpage"
{
    Caption = 'Venus List Page';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Venue_Table;

    layout
    {
        area(Content)
        {
            repeater(Venue_Detail)
            {
                field(Venue_ID; Rec.Venue_ID)
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                field(Accomodation_Qty; Rec.Accomodation_Qty)
                {
                    ApplicationArea = All;
                }
                field(Country; Rec.Country)
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