
# Loyalty-CCI
#################
For scratch orgs
#################
Step 0 : Uncomment the below lines in cumulusCI.yml
#orgs:
    #scratch:
        #lm:
            #config_file: config/project-scratch-def.json
            #days: 30
            
Step 1 : Create an alias for your scratch org using the command : cci org scratch lm '<dev-org-name>' 
  Note: lm is a custom config created in cumulusci.yml

Step 2 : Setup the scratch org using the command : cci flow run setup_lm --org '<dev-org-name>'
  Note : setup_lm is a flow setup in cumulusci.yml
  
  ##################
  For regular orgs
  ##################
  Prerequisites:
  1. Org must have Person account enabled
  2. Org must have a business account record type with developerName = Organistion
  3. Org must have a person account record type with developerName = PersonAccount 
  4. System admin must have access to both the above RTs for Account sObject

  Step 1 : Authorize an org using the command : 
  cci org connect <destination_org_name> --login-url https://instance_domain.my.salesforce.com/
  
  Step 2: Setup loyalty learning org specs using the command : 
  cci flow run setup_lm --org <destination_org_name>
  
