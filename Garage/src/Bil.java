public abstract class Bil {

    private String registreringsNummer;
    private String mærke;
    private String model;
    private String årgang;
    private String antalDøre;

    public static bil(String registreringsNummer, String mærke, String model, String årgang, String antalDøre) {
        this.registreringsNummer = registreringsNummer;
        this.mærke = mærke;
        this.model = model;
        this.årgang = årgang;
        this.antalDøre = antalDøre;
    }


    public abstract beregnGrønEjerafgift();
    // Skal returnere en double

    public String getRegistreringsNummer() {
        return registreringsNummer;
    }

    public void setRegistreringsNummer(String registreringsNummer) {
        this.registreringsNummer = registreringsNummer;
    }

    public String getMærke() {
        return mærke;
    }

    public void setMærke(String mærke) {
        this.mærke = mærke;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getÅrgang() {
        return årgang;
    }

    public void setÅrgang(String årgang) {
        this.årgang = årgang;
    }

    public String getAntalDøre() {
        return antalDøre;
    }

    public void setAntalDøre(String antalDøre) {
        this.antalDøre = antalDøre;
    }
}
