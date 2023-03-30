package com.element.operation;

import com.Dbconn.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.Dbconn.Dbconnection;
import com.element.*;


public class ClassOperations {

	private Connection con;
	private PreparedStatement ps;
	
	public ClassOperations()
	{
		con = Dbconnection.GetConnection();
	}
	
	public String Addcls(Classes cls)
	{
		String chk = "Err";
		try
		{
			ps = con.prepareStatement("insert into sclass(classid, classname) value(?,?)");
			ps.setInt(1, cls.getClassid());
			ps.setString(2, cls.getClassname());
			
			int res = ps.executeUpdate();
			if(res>=1)
				chk="Success";
		}
		catch(Exception ex)
		{
			chk=ex.getMessage();
		}
		return chk;
	}
	
	public List<Classes> ShowAllcls()
	{
		List<Classes> clsinfo = new ArrayList<Classes>();
		Classes cls = null;
		
		try {
			
			ps=con.prepareStatement("select * from sclass");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				cls = new Classes();
				
				cls.setClassid(rs.getInt("classid"));
				cls.setClassname(rs.getString("classname"));
				clsinfo.add(cls);
			}
			
		}
		catch(Exception e)
		{
			
		}
		return clsinfo;
		
	}
	
	
	public String DeleteCls(int eno)
	{
		String chk = "Err";
		try
		{
			ps = con.prepareStatement("delete from sclass where classid=?;");
			
			int res = ps.executeUpdate();
			
			if(res>=1)
				chk="Success";
		}
		catch(Exception ex)
		{
			chk=ex.getMessage();
		}
		return chk;
	}
	}


