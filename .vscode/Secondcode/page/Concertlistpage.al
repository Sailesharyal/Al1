page 50143 "Concertlistpage"
{

    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Concert_management;
    CardPageId = Concertcardpage;

    layout
    {
        area(Content)
        {
            repeater(managemntlist)
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