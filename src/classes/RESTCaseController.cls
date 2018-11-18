@RestResource(urlMapping='/FieldCase/*')
global with sharing class RESTCaseController {

    @HttpPost  
    global static String createAccount(String Name) {
    
    string responce='Hi '+name;
    
    return responce;
    }
    
    
    @HttpGet
    global static String doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String Name = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
       
        return 'Hi '+Name;
    }

}