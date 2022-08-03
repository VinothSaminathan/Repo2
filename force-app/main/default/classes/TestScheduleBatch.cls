public class TestScheduleBatch implements Database.batchable<Sobject> {
    public Database.queryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT id,name from Account');
    }
    Public void execute(Database.BatchableContext bc,List<Account> accListFromStartMethod){
        for(Account acc: accListFromStartMethod){
            acc.name = 'Batch update -'+acc.name;
        }
        UPDATE accListFromStartMethod;
    }
    Public void finish(Database.BatchableContext bc){
        
    } 

}