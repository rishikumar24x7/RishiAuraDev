<<<<<<< HEAD
//this created by rashmiritu
=======
//this created by ritu
//updated by rishi
>>>>>>> 3964fff75c35005272d340269ddb82944122442f
public class accountcontact
{
    list<AccountWrapper> wraplist=new list<AccountWrapper>();
    public accountcontact()
    {
       Map<Id, AccountWrapper> accMap=new Map<Id, AccountWrapper>();
       for(account a:[SELECT CreatedbyID,Account.Name,(SELECT      
                name,Contact.FirstName, Contact.LastName 
                FROM Account.Contacts) FROM Account])
       {
           AccountWrapper accWrap=accMap.get(a.CreatedByID);
           if (null==accWrap)
           {
              accWrap=new AccountWrapper();
              accMap.put(a.CreatedByID, accWrap);
              accWrap.userId=a.CreatedById;
           }

           accWrap.accounts.add(a);
		   accWrap.accounts.add(a);
       }

       wrapList=accMap.values();
   }

   public list<AccountWrapper> getaccounts()
   {
      return wraplist;
   }

   public class AccountWrapper
   {
      public Id userId {get; set;}
      public List<Account> accounts {get; set;}
      public AccountWrapper()
      {
         accounts=new List<Account>();
      }
   }
}