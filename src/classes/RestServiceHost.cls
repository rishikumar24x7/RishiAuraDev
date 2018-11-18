@RestResource(urlMapping='/ServiceHost/*')
global class RestServiceHost {
    @HttpGet
    global static string echoMyType() {
        System.enqueueJob(new AsyncToAsyncCall());
        return 'CALL DONE';
    } 
    
    
}