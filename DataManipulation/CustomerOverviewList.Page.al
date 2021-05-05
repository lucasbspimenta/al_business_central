page 50120 "Customer Overview List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Customer Overview";
    Caption = 'Customer Overview List';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;

                }
                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = All;

                }
                field("Customer Name"; "Customer Name")
                {
                    ApplicationArea = All;
                }

                field("Source Code"; "Source Code")
                {
                    ApplicationArea = All;

                }
                field("Amount"; "Amount")
                {
                    ApplicationArea = All;

                }
                field("LastRunDate"; "LastRunDate")
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

    var
        myInt: Integer;
}