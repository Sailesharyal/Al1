page 50145 "Artistlistpage  "
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Artist;

    layout
    {
        area(Content)
        {
            repeater(Listofartist)
            {
                field(Artist_ID; Rec.Artist_ID)
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

                field(Gender; Rec.Gender)
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