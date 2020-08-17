
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Logger;
import model.Produto;



/**
 *
 * @author Jailton
 */
public class ProdutoDAO {
    
    private final Connection conn; /*A variável de conexão conn é private para a classe
    ProdutoDAO, mas como o construtor é público para classe ProdutoDAO, tanto faz
    a variável conn ser declarada dentro ou fora do construtor.
       */
    PreparedStatement stmt;
    Statement st;
    ResultSet rs;
    ArrayList <Produto> lista = new ArrayList<>();
    
    /**
     *
     */
    public ProdutoDAO(){
        
        
        
        conn = new ConnectionFactory().getConexao(); /*O método construtor do DAO
                                                    só precisa receber uma instancia
                                                    da classe que estabelece a conexão
                                                    com o banco de dados do mysql que
                                                    será utilizado por isso aqui.*/
        
    }
    ////////////////////////////////////////////////////////////////////////////
    //   >>>>>>>>>>>>>>>>>>AQUI SERÃO MONTADOS OS MÉTODOS CRUD<<<<<<<<<<<<<<<<<<
    ////////////////////////////////////////////////////////////////////////////
    
    /**
     *
     * @param produto
     */
    public void inserir(Produto produto){
        String sql = "INSERT INTO tbProdutos (nomeprod,precoun,qt) VALUES(?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNomeprod());
            stmt.setDouble(2, produto.getPrecoun());
            stmt.setInt(3, produto.getQt());
            stmt.execute();
            stmt.close();
        }
        catch(SQLException e){
            throw new RuntimeException("Erro 2\nErro na inserção de dados!\nDescrição: "+e);
        }  
    }
    
    /////////////////////////////////////////////////////////////////////////////////////////

    /**
     *
     * @param produto
     */
    public void alterar(Produto produto){
        String sql = "UPDATE tbProdutos SET nomeprod = ?, precoun = ?, qt = ? WHERE idprod = ?";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNomeprod());
            stmt.setDouble(2, produto.getPrecoun());
            stmt.setInt   (3, produto.getQt());
            stmt.setInt   (4, produto.getIdprod());
            stmt.execute();
            stmt.close();
        }
        catch(SQLException e){
            throw new RuntimeException("Erro 3\nErro na alteração de dados!\nDescrição: "+e);
        }  
    }
    
    ///////////////////////////////////////////////////////////////////////////////////////////

    /**
     *
     * @param valor
     */
    public void excluir(int valor){
        String sql = "DELETE FROM tbProdutos WHERE idprod = "+valor;
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }
        catch(SQLException e){
            throw new RuntimeException("Erro 4\nErro na exclusão de dados!\nDescrição: "+e);
        }  
    }
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    
    //isso aqui embaixo agora vai funcionar como método consultar

    /**
     *
     * @return
     */
    
    public ArrayList<Produto> listarTodos(){
        String sql = "SELECT * FROM tbProdutos";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()){
                Produto produto = new Produto();                   // aqui precisa ser
                produto.setIdprod(rs.getInt("idprod"));            //preenchido exatamente
                produto.setNomeprod(rs.getString("nomeprod"));     //como foram declarados
                produto.setPrecoun(rs.getDouble("precoun"));       //os campos da tabela do
                produto.setQt(rs.getInt("qt"));                    //banco de dados
                lista.add(produto);
            
            }
        }
        catch(Exception erro){
            throw new RuntimeException("Erro 5\nErro 5\nErro na listagem de dados!\nDescrição: "+erro);
        }
        return lista;
    }
    
    /**
     *
     * @param valor
     * @return
     */
    public ArrayList<Produto> listarTodosDescricao(String valor){
        String sql = "SELECT * FROM tbProdutos WHERE nomeprod LIKE '%"+valor+"%'";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()){
                Produto produto = new Produto();                   // aqui precisa ser
                produto.setIdprod(rs.getInt("idprod"));            //preenchido exatamente
                produto.setNomeprod(rs.getString("nomeprod"));     //como foram declarados
                produto.setPrecoun(rs.getDouble("precoun"));       //os campos da tabela do
                produto.setQt(rs.getInt("qt"));                    //banco de dados
                lista.add(produto);
            
            }
        }
        catch(Exception erro){
            throw new RuntimeException("Erro 6\nErro na listagem de dados!\nDescrição: "+erro);
        }
        return lista;
    }
    private static final Logger LOG = Logger.getLogger(ProdutoDAO.class.getName());
    
}
