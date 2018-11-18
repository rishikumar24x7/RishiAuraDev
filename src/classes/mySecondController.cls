public class mySecondController {

 

  public Account getAccount() {

    return [select id,name from Account limit 1];

  }

}