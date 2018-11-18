trigger Opportunity_Account on Opportunity (After Update) {
    
            List<Account> lstAccount=new List<Account>();
            Set<ID> sid=new Set<ID>();
            List<Account> lstAcc=new List<Account>(); 
            
            if(trigger.isafter)
                {
                    for(Opportunity o:Trigger.Old)
                        {
                        sid.add(o.AccountId);
                        }
                }
            lstAccount=[select id,val__c from Account where id in:sid];
  //COPY NEW VAL  FROM OPP VAL TO ACC VAL        
            for(Opportunity o:Trigger.Old)
                {
                    for(Account a:lstAccount)
                        {
                            a.val__c=o.val__c;
                            lstacc.add(a);
                         }
                    
                }
            update lstacc;
}