import java.util.Arrays;

class DogKennel {

    public static void main(String[] args) {

        Dog myDog = new Dog("Molly");

        myDog.setOwner("Louise");

        myDog.setOffSpring("Woodie");
        myDog.setOffSpring("Fido");


        String[] myOff = myDog.getOffSpring();
        for (String myD: myOff) {
            System.out.println(myD);
        }
        System.out.println(Arrays.toString(myOff));

        System.out.println("Min hund er ejet af " + myDog.getOwner());

        boolean resString = myDog.feedDog();
        System.out.println(resString);

        System.out.println("Molly" + "er ejet af" + myDog.getOwner());
    }


}
