public class AccountProcessor{
    @future
    public static void countContacts(List<Id>accIds){
        Map<Id,AggregateResult>results=new Map<Id,AggregateResult>([Select AccountId Id , Count(Id) contactCount  from contact where Accountid in:accids GROUP BY AccountId]);
        List<Account>lstAcc=new List<Account>();
        for(Id accId:accIds){
            Account acc=new Account(Id=accId);
            AggregateResult AR=results.get(accId);
            system.debug('---AR-'+AR);
           // system.debug('---'+AR.get('contactCount'));
           acc.Number_of_Contacts__c=(Decimal)(AR.get('contactCount'));
            lstAcc.add(acc);
        }
        if(lstAcc.size()>0){
            update lstAcc;
            system.debug(lstAcc);
        }
    }
}