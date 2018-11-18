public class AccountContactCreator {
    public static void createAcc(){
        Account objAccount= new Account(Name='Rishi2');
        Contact objContact=new Contact(LastName='Conract Rishi',email='rihi@asd.com',accountId=objAccount.id);
        objContact.accountId=objAccount.id;
        insert objAccount;
        insert objContact;
    }
}