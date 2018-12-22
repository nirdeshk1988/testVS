@isTest
public class AccountManagerTest{

@isTest
Static void getAccandContact(){
    RestRequest request=new RestRequest();
    Account acc=new Account();
    acc.Name='Test1';
    insert acc;
    Contact con=new Contact();
    con.LastName='Kumar';
    con.AccountId=acc.Id;
    insert con;
    request.requestURI='https://ap5.salesforce.com/services/apexrest/Accounts/'+ acc.Id+'/contacts';
    request.httpMethod='GET';
    
    RestContext.request=request;
    AccountManager.getAccount();

}

}