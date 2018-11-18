trigger valchange on Contact (before insert) {

system.debug('values by xyz.... '+trigger.new);
set<ID> aid=new set<ID>();

// getting account id in a set
for(contact c : trigger.new)
{
    aid.add(c.AccountId);
}
//****************

//map account id with its value 
list <Account> accnt=new list<Account>();

accnt= [select Id,val__c from Account where Id in: aid];
map<Id,integer>accmap=new map<Id,integer>();

    for(Account acc : accnt)
    
    {
        
        accmap.put(acc.Id,(integer)acc.val__c);
    }

//*******************************


    for(contact c : trigger.new)
    {
    
        c.val__c=accmap.get(c.AccountId);
    }

}