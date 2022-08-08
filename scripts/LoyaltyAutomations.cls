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

    public static void createJournalSubTypes(){
        List<JournalSubType> purchaseJournalSubType = [select Id from JournalSubType where Name = 'Purchase' ];
        if(purchaseJournalSubType.isEmpty()){
            //check accrual Journal
            List<JournalType> journals = [select Id from JournalType where Name = 'Accrual'];
            if(journals.isEmpty()){
                //create a journal first
                JournalType accrualJournal = new JournalType(Name = 'Accrual',ProcessType ='Loyalty');
                insert accrualJournal;
                //create purchase JournalSubType
                JournalSubType pur = new JournalSubType(JournalTypeId= accrualJournal.Id,Name = 'Purchase');
                insert pur;
                
            }
            else{
                //create purchase JournalSubType
                JournalSubType pur = new JournalSubType(JournalTypeId= journals[0].Id,Name = 'Purchase');
                insert pur;
            }
        }
    }