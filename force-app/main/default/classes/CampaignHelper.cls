public without sharing class CampaignHelper {
  public static void createCampaignMember() {
    List<Campaign> campaigns = [select Id, Name from Campaign];
    if (campaigns.isEmpty()) {
      System.debug('Unable to see Campaign');
      return;
    }

    Id contactId = [select ContactId from User where Id = :UserInfo.getUserId()].get(0).ContactId;

    CampaignMember cpm = new CampaignMember(CampaignId = campaigns.get(0).Id);
    cpm.ContactId = contactId;
    insert cpm;
  }
}
