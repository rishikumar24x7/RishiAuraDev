public with sharing class AddBill {

    public list<Users__c> benificery{get;set;}
    
    public AddBill(){
    benificery=[select name from Users__c ];
    
    }
}