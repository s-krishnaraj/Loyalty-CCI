import { LightningElement , api} from 'lwc';

import getVoucherDefinitionList from '@salesforce/apex/GetRecordId.getVoucherDefinition'
import getBenefitTypeList from '@salesforce/apex/GetRecordId.getBenefitType'
import getPromotionList from '@salesforce/apex/GetRecordId.getPromotion'
import getLoyaltyTierList from '@salesforce/apex/GetRecordId.getLoyaltyTier'
import getBenefitTypeforMappingList from '@salesforce/apex/GetRecordId.getBenefitTypeforMapping'

export default class LoyaltyExperiencesForMembers extends LightningElement {
    @api app_description = "Explore the different Loyalty Experiences for Members";
   
    @api app_welcome_text = "Explore Loyalty Experiences for Members";
    
    VoucherDefinitionId;
    BenefitTypeId;
    PromotionId;
    LoyaltyTierId;
    BenefitTypeForMappingId;

    connectedCallback() {  

    getVoucherDefinitionList()
    .then(result => {
        console.log("The Voucher definition is", result); 
        if (result.length) {
            this.VoucherDefinitionId = result[0].Id;
        } /*
        else {
            console.debug("Specified Loyalty Program is not present, selecting random record");
            getAnyHouseholdAccountList()
            .then(newResult => {
                console.debug("Household Account from getAnyHouseholdAccount", newResult);
                if (newResult.length) {
                    this.no_record_household_account = false;
                    this.loyaltyProgramId = newResult[0].Id;
                } else {
                    this.no_record_household_account = true;
                    this.loyaltyProgramId = ""
                }
            })
        } */
    })

    getBenefitTypeList()
    .then(result => {
        console.log("The Benefit type is", result);
        if (result.length) {
            this.BenefitTypeId = result[0].Id;
        } 
    })
    
    getPromotionList()
    .then(result => {
        console.log("The Promotion is", result);
        if (result.length) {
            this.PromotionId = result[0].Id;
        } 
    })

    getLoyaltyTierList()
    .then(result => {
        console.log("The Loyalty Tier is", result);
        if (result.length) {
            this.LoyaltyTierId = result[0].Id;
        } 
    })

    getBenefitTypeforMappingList()
    .then(result => {
        console.log("The Benefit type is", result);
        if (result.length) {
            this.BenefitTypeForMappingId = result[0].Id;
        } 
    })

}

get pass_false() {
    return false;
}

get pass_true() {
    return true;
}
}