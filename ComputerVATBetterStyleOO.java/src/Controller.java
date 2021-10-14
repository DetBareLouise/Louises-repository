import java.util.Scanner;

public class Controller {
    private static final Object CURRENCY = ;
    private static final Object MSG = ;
    private static final double PRCVAT = ;

    public static void main(String[] args){
        runController();

        public class ComputeVATBetterStyleOO {
            final static int PRCVAT = 25;
            final static String MSG = "MOMS";
            final static String CURRENCY = "Kr";

    }
    public static void runController()
    {
        double userIn = dialog();
        double moms = doVAT(userIn);
        view(moms, (String) MSG);
    }

}

    private static double dialog() {
        Scanner myScan = new Scanner(System.in);
        System.out.println("Indtast varens pris: ");
        double number = myScan.nextDouble();
        return number;
    }

    private static void runController() {
    }


    public static double doVAT(double number){
        double VAT = number / 100 * PRCVAT;
        return VAT;
    }

    }

    public static void view(double result, String typeOfResult){
        System.out.printf("Du betaler %.2f%3s i %s%n",result,CURRENCY,MSG);
    }
}
