import { LightningElement, wire } from 'lwc';
import createCampaignMember from '@salesforce/apex/CampaignController.createCampaignMember';

export default class CampaignTest extends LightningElement {

  handleClick() {
    createCampaignMember({})
      .then((result) => {
        console.log("result: ",result);
      })
      .catch((error) => {
        console.log("error: ",error);
      });
  }
}