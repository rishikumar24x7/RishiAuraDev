public class dp {

 public list<Account>listAccount{get;set;}
 
 
 public dp (){
 listAccount=[select id, name ,(select id,name from opportunities) from account ];
 }
}