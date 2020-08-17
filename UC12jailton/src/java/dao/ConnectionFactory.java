
package dao;

import static java.lang.Class.forName;
import java.sql.Connection;
import java.sql.DriverManager;
import static java.sql.DriverManager.getConnection;
import java.util.logging.Logger;

 /*
 * @author Jailton
 */

/**
 *
 * @author Roberto Araujo
 */

public class ConnectionFactory {
    
    /**
     *
     * @return
     */
    public Connection getConexao(){
        try{
            forName("com.mysql.jdbc.Driver");
            return getConnection("jdbc:mysql://localhost/uc12","root",""); /*aqui, os parâmetros são:
                                                                                        url do driver,
                                                                                        usuário do banco
                                                                                        senha do banco*/
            
        }
        catch (Exception e){
            throw new RuntimeException("Erro 1\nNão conectou corretamente!\nDescrição: "+e);
        }
    }
    private static final Logger LOG = Logger.getLogger(ConnectionFactory.class.getName());
    
}
