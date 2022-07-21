    public static void activateLoyaltyProcess(){
        LoyaltyProgramProcess accrualProcess = [select Id, Status from LoyaltyProgramProcess limit 1];
        if(accrualProcess != null){
            accrualProcess.Status = 'Active';  
            update accrualProcess;

           Promotion bonusPromo =  [select Id,IsActive from promotion where Name = '3X Bonus Promotion'];
           if(bonusPromo != null){
                bonusPromo.IsActive = true;
                update bonusPromo;
           }
        }
    }