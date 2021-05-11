pageextension 50101 "Customer List Ext." extends "Customer List"
{
    actions
    {
        addfirst("&Customer")
        {
            action("Reward Levels")
            {
                ApplicationArea = All;
                Image = CustomerRating; // 16x16, if promoted 32x32
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Open the list of reward levels.';

                trigger OnAction();
                var
                    CustomerRewardsExtMgt: Codeunit "Customer Rewards Ext. Mgt.";
                begin
                    if CustomerRewardsExtMgt.IsCustomerRewardsActivated then
                        CustomerRewardsExtMgt.OpenRewardsLevelPage
                    else
                        CustomerRewardsExtMgt.OpenCustomerRewardsWizard;
                end;
            }
        }
    }
}