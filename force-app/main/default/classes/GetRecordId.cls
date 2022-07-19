public without sharing class GetRecordId {
    
    @AuraEnabled(cacheable = true)
    public static List<LoyaltyProgram> getLoyaltyProgram(){
        return [SELECT Id, Name FROM LoyaltyProgram WHERE Name LIKE '%NTO Insider%' LIMIT 1];
    }
    
    @AuraEnabled(cacheable = true)
    public static List<VoucherDefinition> getVoucherDefinition(){
        return [SELECT Id, Name FROM VoucherDefinition WHERE Name LIKE '%10% discount on Apparel%' LIMIT 1];
    }
    
    @AuraEnabled(cacheable = true)
    public static List<BenefitType> getBenefitType() {
        return [SELECT Id, Name FROM BenefitType WHERE Name LIKE '%Shipping%' LIMIT 1];
    }

    @AuraEnabled(cacheable = true)
    public static List<Promotion> getPromotion() {
        return [SELECT Id FROM Promotion WHERE Name LIKE '%3X Bonus Promotion%' LIMIT 1];
    }

    @AuraEnabled(cacheable = true)
    public static List<LoyaltyTier> getLoyaltyTier() {
        return [SELECT Id FROM LoyaltyTier WHERE Name LIKE '%Platinum%' LIMIT 1];
    }

    @AuraEnabled(cacheable = true)
    public static List<BenefitType> getBenefitTypeforMapping() {
        return [SELECT Id FROM BenefitType WHERE Name LIKE '%Exclusive Discounts%' LIMIT 1];
    }

    @AuraEnabled(cacheable = true)
    public static List<Promotion> getPromotionForAutomateProcess() {
        return [SELECT Id FROM Promotion WHERE Name LIKE '%Birthday promotion%' LIMIT 1];
    }

    @AuraEnabled(cacheable = true)
    public static List<LoyaltyProgramProcess> getLoyaltyProgramProcess() {
        return [SELECT Id FROM LoyaltyProgramProcess WHERE Name LIKE '%Process for Accrual Transactions%' LIMIT 1];
    }

    @AuraEnabled(cacheable = true)
    public static List<TransactionJournal> getTransactionJournalLastCreated() {
        return [SELECT Id FROM TransactionJournal ORDER BY createdDate DESC NULLS LAST LIMIT 1];
    }

}