@isTest
public class testSkill{
    
    static testMethod void testBillingAccount(){
        Resource__c objR=new Resource__c(name='test');
        insert objR;
        
        Skill__c obj =new Skill__c ();
        obj.name='Test0';
        obj.Resource__c =objR.Id;
        //insert obj;
        
        Skill__c obj2 =new Skill__c ();
        obj2.name='Test02';
        obj2.Resource__c =objR.Id;
        //insert obj2;
        
        list<Skill__c > objList= new list<Skill__c >{obj,obj2};
        insert objList;
    }


}