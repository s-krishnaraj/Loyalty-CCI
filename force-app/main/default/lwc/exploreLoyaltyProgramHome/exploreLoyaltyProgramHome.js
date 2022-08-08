import { LightningElement , api} from 'lwc';


import getLoyaltyProgramList from '@salesforce/apex/GetRecordId.getLoyaltyProgram';
import getLoyaltyProgramPartnerList from '@salesforce/apex/GetRecordId.getLoyaltyProgramPartner';

export default class ExploreLoyaltyProgramHome extends LightningElement {

   
    @api app_description = "Explore Loyalty Program and its components";
   
    @api app_welcome_text = "Learn about Loyalty Program and its components";

    loyaltyProgramId;
    loyaltyProgramPartnerId;

    connectedCallback() {  

    getLoyaltyProgramList()
    .then(result => {
        console.log("The Loyalty Program is", result);
        if (result.length) {
            this.loyaltyProgramId = result[0].Id;
        } 
    })

    getLoyaltyProgramPartnerList()
    .then(result => {
        console.log("The Loyalty Program Partner is", result);
        if (result.length) {
            this.loyaltyProgramPartnerId = result[0].Id;
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