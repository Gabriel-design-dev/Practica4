
package ModeloLogin;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author GABRIEL
 */
public  class PersonaDAO implements Validar{
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
   


    public int validar(Persona per) {
        String sql=("Select* from usuarios where usuario=? and contraseña=?");
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, per.getUsuario());
            ps.setString(2, per.getContraseña());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r=1;
                per.setUsuario(rs.getString("usuario"));
                per.setContraseña(rs.getString("contraseña"));
            }
                if(r==1){
                    return 1;
                }else{
                    return 0;
                }
               
            
        } catch (Exception e) {
            return 0;
        
    }}}
        
     
    

    


