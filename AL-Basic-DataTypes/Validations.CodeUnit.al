codeunit 50111 Validations
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    local procedure CheckForPlusSign(TextToVerify: Text)
    begin
        if (StrPos(TextToVerify, '+') > 0) then
            Message('Has + sign on text');
    end;

    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnBeforeValidateEvent', 'Address', false, false)]
    local procedure OnBeforeValidateAddress(var Rec: Record Customer; var xRec: Record Customer)
    begin
        CheckForPlusSign(Rec.Address);
    end;
}