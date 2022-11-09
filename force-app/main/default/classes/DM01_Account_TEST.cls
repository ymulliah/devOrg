@isTest
public class DM01_Account_TEST {
    static DM01_Account dataManager = new DM01_Account();

    @testSetup
    static void setup() {
        Account acc = new Account(Name = 'Sample Account');
        insert acc;
    }

    @isTest
    static void getLstAccounts(){
        Account acc = [SELECT Id, Name FROM Account];
        List<Account> lstAccs = dataManager.getLstAccounts(acc.Id);
        System.assertEquals(lstAccs.size(), 1);
    }
}
