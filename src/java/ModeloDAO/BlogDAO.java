
package ModeloDAO;

import Config.Conexion;
import Intefaces.CRUD;
import Modelo.Blog;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BlogDAO implements CRUD{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Blog p=new Blog();
    
    @Override
    public List listar() {
        ArrayList<Blog>list=new ArrayList<>();
        String sql="select * from blog";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Blog per=new Blog();
                per.setId(rs.getInt("id"));
                per.setAutor(rs.getString("autor"));
                per.setDescripcion(rs.getString("descripcion"));
                per.setTitulo(rs.getString("titulo"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Blog list(int id) {
        String sql="select * from blog where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setId(rs.getInt("id"));
                p.setAutor(rs.getString("autor"));
                p.setDescripcion(rs.getString("descripcion"));
                p.setTitulo(rs.getString("titulo"));
                
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Blog per) {
       String sql="insert into blog(autor, descripcion, titulo)values('"+per.getAutor()+"','"+per.getDescripcion()+"','"+per.getTitulo()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Blog per) {
        String sql="update blog set autor='"+per.getAutor()+"',descripcion='"+per.getDescripcion()+"',titulo='"+per.getTitulo()+"'where id="+per.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from blog where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
