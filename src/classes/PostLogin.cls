public class PostLogin {

    public PostLogin ()
    {
        ValidateLogin();

    }
    
    private pageReference ValidateLogin()
    {
    
            Cookie loginDetails= ApexPages.currentPage().getCookies().get('loginDetails');
            if(loginDetails!=null)
            {
            
            return null;
            
            }
            else
            {
             PageReference pageRef = new PageReference('/apex/public');
             return pageRef ;
            }
    }
}