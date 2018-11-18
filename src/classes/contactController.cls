public with sharing class contactController {

    public list<Account>lstAccount {get;set;}
    
    public contactController ()
    {
        lstAccount =[select name,(select name from contacts) from Account];
        
    }
}