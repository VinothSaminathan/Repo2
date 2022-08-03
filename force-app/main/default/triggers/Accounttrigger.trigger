trigger Accounttrigger on Account (BEFORE INSERT, BEFORE UPDATE, BEFORE DELETE,AFTER INSERT, AFTER UPDATE, AFTER DELETE, AFTER UNDELETE) 
{
 System.debug('IsBefore :'+trigger.IsBefore);
    System.debug('IsDelete :'+trigger.IsDelete);
    
    System.debug('IsAfter :'+trigger.IsAfter);
     System.debug('IsInsert :'+trigger.IsInsert);
     System.debug('IsUpdate :'+trigger.IsUpdate);
     System.debug('IsExecuting :'+trigger.IsExecuting);
    
    System.debug('new :'+trigger.new);//list
    System.debug('newmap :'+trigger.newmap);//map
     System.debug('old :'+trigger.old);
    System.debug('oldmap :'+trigger.oldmap);
    
    updatetrigger(trigger.Isbefore,trigger.Isafter,trigger.Isinsert,trigger.Isupdate,trigger.new,trigger.old);
    
    public void updatetrigger(Boolean IsBefore,Boolean IsAfter,Boolean IsInsert,Boolean IsUpdate, List<Account> newlist ,List<Account> oldlist)
    {
           System.debug('updatetrigger inside===>');
        
        if((IsBefore && IsInsert)|| (IsBefore && Isupdate)){
            for(Account ac:newlist){
                
                if(ac.Rating !=null && ac.Rating.equals('Hot'))
                {
                    ac.AnnualRevenue =10000;  
                }
                else If(ac.Rating !=null && ac.Rating.equals('Warm'))
                {
                    ac.AnnualRevenue =5000; 
            }
                else If(ac.Rating !=null && ac.Rating.equals('Cold'))
                {
                    ac.AnnualRevenue =1000; 
            }
        }
        }        
    }
}