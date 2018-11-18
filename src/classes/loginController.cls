public class loginController {
    public string userID{get;set;}
    public string password{get;set;}
    public string retUrl;
    
     public PageReference login() {
     
     list<Users__c> lstUser=new list<Users__c>();
     lstUser=[select name,password__c  from Users__c where name=:userID ];
     if(lstUser.size()==0)
     {
         ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Invalid Password or user Id'));
         return null;
     }
     else
     {    
        PageReference pageRef = new PageReference('/apex/PostLogin');
        
                 
        return pageRef ;
     }
    }
    
    
}