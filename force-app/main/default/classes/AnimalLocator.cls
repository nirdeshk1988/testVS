public class AnimalLocator{
    public static string getAnimalNameById(Integer animalId){
        Http ht=new Http();
        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+animalId);
        request.setMethod('GET');
        HttpResponse response=ht.send(request);
        if(response.getStatusCode()==200){
            AnimalParsor aniamlP=new AnimalParsor();
           aniamlP= AnimalParsor.parse(response.getBody());
           system.debug('------'+aniamlP);
          // System.debug('*****test******');
            return aniamlP.animal.name;
        }else{
            return 'Not Found';
        }
        
    }
}
