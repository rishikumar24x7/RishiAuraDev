public with sharing class SkillMatrixDynamicController3 {


    public list<Resource__c> lstResource {get; private set;}
    public String SelectedResource {get; set;} 
    public list<Skill__c> lstSkills {get; set;}   
    public integer size {get; set;}
    public String newRating{get; set;}


    
    public list<selectOption> getResourceList() {
         lstResource = [select id , First_Name__c, Last_Name__c from resource__c limit 10];
         List<SelectOption> options = new List<SelectOption>();
         options.add(new Selectoption('', '-Select-'));
         for(Resource__c objResource: lstResource)
         {
             options.add(new SelectOption(objResource.Id,objResource.First_name__c+' ' +objResource.Last_Name__c));
         }
         return Options;
    }
    
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public void Save()
    {
        list<Skill__c> lstUpdateSkills = new list<Skill__c>();
        for(Skill__c objSK: lstSkills)
        {
             lstUpdateSkills.add(objSK);   
        }
        update lstUpdateSkills;
    }
    public void searchResourceSkills()
    {
        if(SelectedResource != null && SelectedResource != '')
        {
                lstSkills = [Select notes__c, Type__c, Resource__c, Rating__c, Name, Id From Skill__c where Resource__c =: SelectedResource];
                if(lstSkills.size() > 0)
                {
                    size = lstSkills.size();
                    ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.Info, 'Successful'));
                }else
                {
                    ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.Warning, 'No record found'));
                    
                }
            }
            else
            {
                ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.Fatal, 'Please Select A value'));
            }
        
    }

}