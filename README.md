# Create a Campaign Member as a Community User (which does not provide license access)

## Part 1: Clone this repo

`git clone git@github.com:rdehler/lwc-community-create-campaignmember.git`

## Part 2: Create scratch org and login

```
sfdx force:org:create -f config/project-scratch-def.json -a CampaignTest
sfdx force:source:push -u CampaignTest
sfdx force:org:open -u CampaignTest
```

## Part 3: Create Records, Community

Create a Role, and assign it to your user.  This is required to create Community Users; owner of the Community's Account must have a role.

Clone a Community profile.

Create a Community, add the custom component "Campaign Test" to a page, enable Community for cloned profile, publish Community.

Create the following:
- Campaign (will need Marketing User checked on your user record), name has to be "Ray Test" with Active = true
- Account
- Contact for this Account

Enable the Contact as a Community User with the cloned profile

## Part 4: Login and verify

- Navigate to the Contact you created, and login as them.
- On the Community, click the "Add to Campaign" button
- Open javascript console, should see 
> result:  success

As your non-Community User, navigate to the Campaign, and you should see one Campaign Member

