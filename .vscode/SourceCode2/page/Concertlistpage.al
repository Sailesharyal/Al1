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
            action(ChnageCoountry)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    COncert: Record Concert_management;
                begin
                    COncert.Reset();
                    COncert.SetRange("Venue ", '755');
                    if COncert.FindFirst() then
                        repeat
                            COncert.Country := 'BN';
                            COncert.Modify();
                        until COncert.Next() = 0;
                end;
            }
        }
    }
}