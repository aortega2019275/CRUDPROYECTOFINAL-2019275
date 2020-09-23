
package ModeloDAO;



import configuration.Conexion;
import intefaces.CRUD;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Persona;


public class PersonaDAO implements CRUD{
    
	Conexion conect = new conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	Persona nuevaPersona = new Persona();
	
	
	
	@Override
	    public List listar();
            ArrayList<Persona> listaPersona = new ArrayList<>();
		String sql = "select * from Persona";
		try{
		
		
			con = conect.getConection():
			ps = con.PreparedStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				Persona nuevaPersona = new Persona();
				nuevaPersona.setCodigoPersona(rs.getInt("codigoPersona"));
			    nuevaPersona.setDPI(rs.getString(DPI));
				nuevaPersona.setNombrePersona(rs.getString(NombrePersona));
				listaPersona.add(nuevaPersona);
			}
			
		}catch(Exception e){
		e.printStackTrace();
		}
		
		return listaPersona;
	}
	
	@override
	public Persona list(int id);
	throw new UnsupportedOperationException("No soportado");
	}
	
	@Override
	public boolean add(Persona per);
		throw new UnsupportedOperationException("No soportado");
	}
    
	@Override
	public boolean edit(Persona per);
			throw new UnsupportedOperationException("No soportado");
	}

    @Override
	public boolean eliminar(int id);
			throw new UnsupportedOperationException("No soportado");
	}

}
