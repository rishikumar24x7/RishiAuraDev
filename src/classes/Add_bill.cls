public with sharing class Add_bill {
public static boolean flag=false;
    public Add_bill() {
    
        List<Users__c> lstuser;
        
        
        lstUser=[select name from Users__C ];
        options=new List<SelectOption>();
        for(Users__C u : lstUser)
        {
               options.add(new SelectOption(u.id,u.name));  
              
        }
       
    
    
        

    
    
    }
    
    
    public Bill__C Bill {get;set;}
    public List<SelectOption> options{get;set;}
    
    
    public void saveBill(){
    
    
    }

}