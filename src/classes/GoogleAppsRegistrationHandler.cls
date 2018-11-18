global class GoogleAppsRegistrationHandler implements Auth.RegistrationHandler{ 

    global User createUser(Id portalId, Auth.UserData data){

      // If the email scope has been set we will receive the users email address        
      system.debug('Auth.UserData data::'+data);
      String email = data.email;
      if (email == null) return null;

      // Make sure the email matches our domain
      // TODO: Uncomment and update as necessary
      // if (!email.contains('rishikumar') || !email.contains('rashmiritu007@gmail.com')) return null;


      // Attempt to find a user with the same email address
      User u;
      try {
           u = [Select Id, FirstName, LastName, Email, Username from User Where Username = 'rishi.kumar@saasfocus.com'];
         } catch (Exception e){
           return null;
         }
         return u;

    }

    global void updateUser(Id userId, Id portalId, Auth.UserData data){
        // DO Nothing in the update Scenario
    }

}