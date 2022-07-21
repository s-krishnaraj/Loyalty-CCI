import { LightningElement , api} from 'lwc';

import getPromotionList from '@salesforce/apex/GetRecordId.getPromotionForAutomateProcess'
import getLoyaltyProgramProcessList from '@salesforce/apex/GetRecordId.getLoyaltyProgramProcess'

export default class AutomateWithLoyaltyProcesses extends LightningElement {
    @api app_description = "Learn how you can define the process for customer recognition, rewards, and experiences by setting up Loyalty Processes";
   
    @api app_welcome_text = "Automate with Loyalty Processes";  


    PromotionId;
    LoyaltyProgramProcessId;


    connectedCallback() {  

        getPromotionList()
        .then(result => {
            console.log("The Promotion is", result);
            if (result.length) {
                this.PromotionId = result[0].Id;
            } 
        })

        getLoyaltyProgramProcessList()
        .then(result => {
            console.log("The LoyaltyProgramProcess Id is", result);
            if (result.length) {
                this.LoyaltyProgramProcessId = result[0].Id;
            } 
        })

    }
}