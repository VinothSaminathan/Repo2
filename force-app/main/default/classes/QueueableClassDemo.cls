public class QueueableClassDemo implements Queueable {
    public void execute(QueueableContext qc){
        //write any logicto run asynchrnously
        List<Account> accListFromStartMethod =[SELECT id from Account];
        for(Account acc: accListFromStartMethod){
            acc.name = 'Batch update -'+acc.name;
        }
        UPDATE accListFromStartMethod;
        
    }

}