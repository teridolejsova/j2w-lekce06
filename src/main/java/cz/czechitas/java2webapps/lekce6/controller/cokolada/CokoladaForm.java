package cz.czechitas.java2webapps.lekce6.controller.cokolada;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

public class CokoladaForm {
    @NotBlank
    private String druh;
    @NotBlank
    private String jmeno;
    @Email
    private String email;
    @AssertTrue
    private boolean obchodniPodminky;

    public String getDruh() {
        return druh;
    }

    public void setDruh(String druh) {
        this.druh = druh;
    }

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmenoPrijmeni) {
        this.jmeno = jmenoPrijmeni;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isObchodniPodminky() {
        return obchodniPodminky;
    }

    public void setObchodniPodminky(boolean obchodniPodminky) {
        this.obchodniPodminky = obchodniPodminky;
    }
}
