public class SkillController {
 public String inputName {get; set;}
 public String SelectedResourceId{get; set;}
 public list<Resource__c> lstResource {get; set;}
    public list<Skill__c> lstSkills {get; set;}
    public void searchResouceSkills()
    {
     if(inputName != null && inputName !='')
     {
      lstResource = [Select Id from Resource__c where First_Name__c = :inputName limit 1];
      system.debug('List Of resources'+lstResource);
      if(lstResource.size()>0)
      {
         lstSkills = [select Type__c, Resource__c, Rating__c, Name, Id From Skill__c where Resource__c= : SelectedResourceId];
     }
     else
     {
     system.debug('Apex Error');
     }
     }
     else
     {
      system.debug('please fill valid first name of the record');
     }

    }
    
}