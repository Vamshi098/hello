package com.virtusa.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;

import com.virtusa.db.ConnectionManager;

public class TestConnectionManager {

	@Test
	public void test() 
	{
		Connection connection;
		try {
			connection = ConnectionManager.openConnection();
			assertEquals(true,connection!=null);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//assertEquals(true,connection!=null);
	}

}
