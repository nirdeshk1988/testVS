public class AnimalParsor {

    public Animal animal;

    public class Animal {
        public Integer id;
        public String name;
        public String eats;
        public String says;
    }


    public static AnimalParsor parse(String json) {
        return (AnimalParsor) System.JSON.deserialize(json, AnimalParsor.class);
    }
}