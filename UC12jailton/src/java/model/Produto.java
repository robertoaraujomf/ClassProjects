
package model;

import java.util.logging.Logger;

/**
 *
 * @author Jailton
 */
public class Produto {
    
    private int idprod;
    private String nomeprod;
    private double precoun;
    private int qt;
    
    /**
     *
     * @return
     */
    public int getIdprod() {
        return idprod;
    }

    /**
     *
     * @param idprod
     */
    public void setIdprod(int idprod) {
        this.idprod = idprod;
    }

    /**
     *
     * @return
     */
    public String getNomeprod() {
        return nomeprod;
    }

    /**
     *
     * @param nomeprod
     */
    public void setNomeprod(String nomeprod) {
        this.nomeprod = nomeprod;
    }

    /**
     *
     * @return
     */
    public double getPrecoun() {
        return precoun;
    }

    /**
     *
     * @param precoun
     */
    public void setPrecoun(double precoun) {
        this.precoun = precoun;
    }

    /**
     *
     * @return
     */
    public int getQt() {
        return qt;
    }

    /**
     *
     * @param qt
     */
    public void setQt(int qt) {
        this.qt = qt;
    }
    private static final Logger LOG = Logger.getLogger(Produto.class.getName());
    
    
}
