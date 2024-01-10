page 50146 "Concertcardpage"
{

    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Concert_management;

    layout
    {
        area(Content)
        {
            group(Mangment)
            {
                field(Concert_ID; Rec.Concert_ID)
                {
                    ApplicationArea = All;
                }

                field("Venue "; Rec."Venue ")
                {
                    ApplicationArea = All;
                }

                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                }

                field(Artist; Rec.Artist)
                {
                    ApplicationArea = All;
                }
                field(Manager_name; Rec.Manager_name)
                {
                    ApplicationArea = All;
                }
                field(Charge; Rec.Charge)
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