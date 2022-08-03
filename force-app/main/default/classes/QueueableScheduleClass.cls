public class QueueableScheduleClass implements schedulable{
    public void execute(schedulablecontext sc){
        system.enqueueJob(new QueueableClassDemo());
    }

}