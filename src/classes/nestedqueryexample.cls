public with sharing class nestedqueryexample {
public List<Account> getaccsandtmember()
  {
      List<Account> accounts = [Select Id, Name, BillingCountry from Account];
      return accounts;
  }
}