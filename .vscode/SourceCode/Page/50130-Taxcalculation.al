page 50136 "Taccalculationpage"
{
    Caption = 'Tax Calculation';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Taxcalculation;

    layout
    {
        area(Content)
        {
            group(TAX)
            {
                field(Salary; Rec.Salary)
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
            action(Calculate)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    Tax: Decimal;
                begin
                    if Rec.Salary < 10000 then begin
                        Tax := (5 * Rec.Salary) / 100;
                        Message('Your Tax is less than 5% and Your TAX Amout is %1', Tax);
                    end
                    else
                        if Rec.Salary >= 10000 and Rec.Salary <= 50000 then begin

                            Tax := (10 * Rec.Salary) / 100;
                            Message('Your Tax is less than 10% and Tax Amount is %1', Tax);
                        end
                        else
                            Tax := (15 * Rec.Salary) / 100;
                    Message('Your Tax is less than 10% and your Tax Amount is %1', Tax);

                end;
                end;
            }
        }
    }
}