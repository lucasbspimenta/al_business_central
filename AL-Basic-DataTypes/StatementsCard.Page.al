page 50113 StatementsCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statements Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                    begin
                        GetSuggestion();
                    end;
                }
            }

            group(Output)
            {
                Caption = 'Output';
                field(Suggestion; Suggestion)
                {
                    Caption = 'Suggestion';
                    ApplicationArea = All;
                    Editable = false;
                }

                field(Level; Level)
                {
                    Caption = 'Level';
                    ApplicationArea = All;
                    Editable = false;

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
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;

    local procedure GetSuggestion()
    var

    begin
        Level := '';
        Suggestion := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
        end;
    end;
}