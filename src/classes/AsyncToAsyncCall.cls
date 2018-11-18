public class AsyncToAsyncCall implements Queueable{
    
    @future (callout=true)
    public static void doCallout(string sessionID){
        Http objHttp =new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://rishiaura-dev-ed.my.salesforce.com/services/apexrest/ORCH/ServiceHost/');
        req.setMethod('GET');
        req.setHeader('Authorization', 'Bearer '+sessionID);
        system.debug('SessionId'+sessionID);
        HttpResponse res = objHttp.send(req);
        system.debug('HttpRes'+res.getBody());
    }
    
    public static void execute(QueueableContext context) {
        ORCH__SessionID__c sessionID=ORCH__SessionID__c.getInstance();
		doCallout(sessionID.value__c);
    }
}