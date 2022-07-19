import { LightningElement , api} from 'lwc';

import getLoyaltyProgramList from '@salesforce/apex/GetRecordId.getLoyaltyProgram'
import getTransactionJournalList from '@salesforce/apex/GetRecordId.getTransactionJournalLastCreated'

export default class EngageLoyaltyMembers extends LightningElement {
    @api app_description = "Learn to add members to the Loyalty Program & engage them";
   
    @api app_welcome_text = "Learn to engage Loyalty Members";


    loyaltyProgramId;
    TransactionJournalId;

connectedCallback() {  

    getLoyaltyProgramList()
    .then(result => {
        console.log("The Loyalty Program is", result);
        if (result.length) {
        this.loyaltyProgramId = result[0].Id;
        } 

    })

    getTransactionJournalList()
    .then(result => {
        console.log("The TransactionJournal last created is", result);
        if (result.length) {
            this.TransactionJournalId = result[0].Id;
        } 
    
        })

    }

}