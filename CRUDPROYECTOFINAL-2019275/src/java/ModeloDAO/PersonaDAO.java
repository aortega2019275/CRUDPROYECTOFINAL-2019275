
package ModeloDAO;



import configuration.Conexion;
import intefaces.CRUD;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Persona;


public class PersonaDAO implements CRUD{
    
	Conexion conect = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	Persona nuevaPersona = new Persona();
	
	
	
	@Override
	    public List listar(){
            ArrayList<Persona> listaPersona = new ArrayList<>();
		String sql = "select * from Persona";
		try{
		
		
			con = conect.getConection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				Persona nuevaPersona = new Persona();
				nuevaPersona.setCodigoPersona(rs.getInt("codigoPersona"));
			    nuevaPersona.setDPI(rs.getString("DPI"));
				nuevaPersona.setNombrePersona(rs.getString("nombrePersona"));
				listaPersona.add(nuevaPersona);
			}
                
		}catch(SQLException e){
		e.printStackTrace();
		}
		
		return listaPersona;
            }
     @Override
    public Persona list(int id) {
        String sql = "Select * from Persona where codigoPersona="+id;
        try{
            con = conect.getConection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                nuevaPersona.setCodigoPersona(rs.getInt("codigoPersona"));
                nuevaPersona.setDPI(rs.getString("DPI"));
                nuevaPersona.setNombrePersona(rs.getNString("nombrePersona"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return nuevaPersona;
    }

    @Override
    public boolean add(Persona per) {
        String sql = "Insert into persona (dpi, nombrePersona) values ('"+per.getDPI()+"','"+per.getNombrePersona()+"')"; 
            
        try{
             con = conect.getConection();
             ps = con.prepareStatement(sql);
             ps.executeUpdate();
                
            }catch(Exception e){
                e.printStackTrace();
            }
            return false;
             
    }

    @Override
    public boolean edit(Persona per) {
        String sql = "update persona set DPI='"+per.getDPI()+"', nombrePersona = '"+per.getNombrePersona()+"'where codigoPersona ="+per.getCodigoPersona();
         try{
           con = conect.getConection();
            ps = con.prepareStatement(sql);
	    ps.executeUpdate(); 
         } catch (Exception e){
                e.printStackTrace();
             
         }
         
         return false; 
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from persona where codigoPersona ="+id;
        try{
            con = conect.getConection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
        }catch (Exception e){
            e.printStackTrace();
        }
        return false; 
    }
	}
	

