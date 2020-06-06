
package Intefaces;

import Modelo.Blog;
import java.util.List;


public interface CRUD {
    public List listar();
    public Blog list(int id);
    public boolean add(Blog per);
    public boolean edit(Blog per);
    public boolean eliminar(int id);
}
