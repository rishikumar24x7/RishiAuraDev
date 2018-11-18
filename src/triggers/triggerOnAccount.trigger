trigger triggerOnAccount on Account (before update) {
    
    
    //AsyncToAsyncCall.doCallout(sessionID);
    String sessionID=UserInfo.getSessionId();
    ORCH__SessionID__c objSession=ORCH__SessionID__c.GETINSTANCE();
    //objSession.name='SessionId';
    objSession.value__c=sessionID;
    upDATE objSession;
    //AsyncToAsyncCall.sessionID=sessionID;
    System.enqueueJob(new AsyncToAsyncCall());
    
}