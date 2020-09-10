public with sharing class CampaignController {
  @AuraEnabled
  public static String createCampaignMember() {
    try {
      CampaignHelper.createCampaignMember();
      return 'success';
    } catch(Exception e) {
      return e.getMessage();
    }
  }

}
