public class AccountHandler {

	public static void afterInsert(list<Account> trigerNew) {

		for (Account objAcc :[select Id, Name from Account where Id=  :trigerNew]) {
			system.debug('objAcc ::' + objAcc);
		}
	}
}