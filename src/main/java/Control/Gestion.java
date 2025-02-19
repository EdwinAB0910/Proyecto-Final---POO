package control;
import java.sql.*;
import java.util.*;
import modelo.*;
import util.MySQLConexion;

public class Gestion {
   
    public List<Destino> lisDes(){
      Connection cn=MySQLConexion.getConexion();
      List<Destino> lista=new ArrayList();
      String sql="select codd,nombre from destino";
      try{
      PreparedStatement st=cn.prepareStatement(sql);
      ResultSet rs=st.executeQuery();
      while(rs.next()){
          Destino d=new Destino();
          d.setCodd(rs.getString(1));
          d.setNombre(rs.getString(2));
          lista.add(d);
      }
          
      }catch(Exception ex){
          ex.printStackTrace();
      }
      return lista;  
    }
    
    //lista de datosD de un destino
    public List<DatosD> lisDatosD(String id){
      Connection cn=MySQLConexion.getConexion();
      List<DatosD> lista=new ArrayList();
      String sql="select coddatos,fecha,hora,bus,costo from datosd where codd=?";
      try{
      PreparedStatement st=cn.prepareStatement(sql);
      st.setString(1, id);
      ResultSet rs=st.executeQuery();
      while(rs.next()){
          DatosD d=new DatosD();
          d.setCoddatos(rs.getString(1));
          d.setFecha(rs.getString(2));
          d.setHora(rs.getString(3));
          d.setBus(rs.getString(4));
          d.setCosto(rs.getDouble(5));
          lista.add(d);
      }
       }catch(Exception ex){
          ex.printStackTrace();
      }
      return lista;  
    }
    //lista de pasajeros de datosD
     public List<Pasajero> lisPasajero(String id){
      Connection cn=MySQLConexion.getConexion();
      List<Pasajero> lista=new ArrayList();
      String sql="select nroboleto,nombre,tipo,asiento,pago from pasajero where coddatos=?";
      try{
      PreparedStatement st=cn.prepareStatement(sql);
      st.setString(1, id);
      ResultSet rs=st.executeQuery();
      while(rs.next()){
          Pasajero p=new Pasajero();
          p.setNroboleto(rs.getString(1));
          p.setNombre(rs.getString(2));
          p.setTipo(rs.getString(3));
          p.setAsiento(rs.getInt(4));
          p.setPago(rs.getDouble(5));
          lista.add(p);
      }
       }catch(Exception ex){
          ex.printStackTrace();
      }
      return lista;  
    }
    //genera nroboleto
     public String genera(){
      Connection cn=MySQLConexion.getConexion();
      String genalu="";
      String sql="select Lpad(max(nroboleto)+1,6,'0') from pasajero";
      try{
      PreparedStatement st=cn.prepareStatement(sql);
      ResultSet rs=st.executeQuery();
       rs.next(); //leer la fila
       genalu=rs.getString(1);
       }catch(Exception ex){
          ex.printStackTrace();
      }
      return genalu;  
    }
    //grabar pasajeros
     public void graba(Pasajero a){
      Connection cn=MySQLConexion.getConexion();
      String sql="insert into pasajero values(?,?,?,?,?)";
      try{
        PreparedStatement st=cn.prepareStatement(sql);
        st.setString(1, genera());
        st.setString(2, a.getCoddatos());
        st.setString(3, a.getNombre());
        st.setString(4, a.getTipo());
        st.setDouble(5, a.getPago());
        st.executeUpdate();
      }catch(Exception ex){
          ex.printStackTrace();
      }   
         
     }

   //seleccion de chofer
    public List<Chofer> lisCho(){
     Connection cn=MySQLConexion.getConexion();
     List<Chofer> lista=new ArrayList();
     try{
      String sql="select codcho, nomcho from chofer";   
      PreparedStatement st=cn.prepareStatement(sql);
      ResultSet rs=st.executeQuery();
      while(rs.next()){//leer filax fila
          Chofer p=new Chofer();
          p.setCodchofer(rs.getString(1));
          p.setNomchofer(rs.getString(2));
          lista.add(p);
      }
     }catch(Exception ex){
         ex.printStackTrace();
     }
      return lista;  
    }

   //lista viajes por chofer
   public List<DatosD> lisViajesChofer(String id) {
    Connection cn = MySQLConexion.getConexion();
    List<DatosD> lista = new ArrayList<>();
    String sql = "select d.coddatos, d.fecha, des.nombre, d.costo from datosd d " +
                 "JOIN destino des on d.codd = des.codd where d.codcho = ?";
    try {
        PreparedStatement st = cn.prepareStatement(sql);
        st.setString(1, id);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            DatosD d = new DatosD();
            d.setCoddatos(rs.getString(1));  
            d.setFecha(rs.getString(2));  
            d.setNombre(rs.getString(3));   
            d.setCosto(rs.getDouble(4)); 
            lista.add(d);
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
    return lista;
    }

   //listado de choferes
    public List<Chofer> listado(){
        Connection cn=MySQLConexion.getConexion();
        List<Chofer> lista=new ArrayList();
        try {
            String sql="Select codcho,nomcho,feingcho,catcho,salariocho from chofer";
            PreparedStatement st=cn.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while (rs.next()) {//leer fila por fila            
                Chofer p=new Chofer();
                p.setCodchofer(rs.getString(1));
                p.setNomchofer(rs.getString(2));
                p.setFecingreso(rs.getString(3));
                p.setCategchofer(rs.getString(4));
                p.setSalariochofer(rs.getDouble(5));
                lista.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
    
    //adicionar nuevo chofer
    public void adicion(Chofer p){
        Connection cn=MySQLConexion.getConexion();
        try {
            String sql="Insert into chofer values(?,?,?,?,?)";
            PreparedStatement st=cn.prepareStatement(sql);//preparar sentencias
            st.setString(1, p.getCodchofer());
            st.setString(2, p.getNomchofer());
            st.setString(3, p.getFecingreso());
            st.setString(4, p.getCategchofer());
            st.setDouble(5, p.getSalariochofer());
            
            //mandar a ejecutar la instruccion
            st.executeUpdate();//actualizar o ejecutar la instruccion sql
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
     
}

