public class DM01_Account {

    public List<Account> getLstAccounts(Id accId){
        return [SELECT Id, Name FROM Account WHERE Id = :accId];
    }
}
