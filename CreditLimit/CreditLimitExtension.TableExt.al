tableextension 50131 CreditLimitExtension extends Customer
{
    fields
    {
        // Add changes to table fields here
    }

    var
        myInt: Integer;

    procedure UpdateCreditLimit(var NewCreditLimit: Decimal)
    begin
        NewCreditLimit := Round(NewCreditLimit, 10000);
        Rec.Validate("Credit Limit (LCY)", NewCreditLimit);
        Rec.Modify();
    end;

    procedure CalculateCreditLimit(): Decimal
    var
        Cust: Record Customer;
    begin
        Cust := Rec;
        Cust.SetRange("Date Filter", CalcDate('<-12M>', WorkDate()), WorkDate());
        Cust.CalcFields("Sales (LCY)", "Balance (LCY)");
        exit(Round(Cust."Sales (LCY)" * 0.5));
    end;
}