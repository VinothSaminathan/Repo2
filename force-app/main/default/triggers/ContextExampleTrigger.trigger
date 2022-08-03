trigger ContextExampleTrigger on Account ( Before insert, after insert, after delete )
{
    
    if(Trigger.isInsert){
        if(Trigger.isbefore){
        
        // process before insert
    } 
        else if (Trigger.isafter){
            //process after insert
        }

    } else if(Trigger.isdelete){
        //process after delete
    }}