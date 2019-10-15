package com.virtusa.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import com.virtusa.dao.ManagerDAO;
import com.virtusa.db.ConnectionManager;
import com.virtusa.entities.Leaves;
import com.virtusa.model.ManagerLeaveModel;

public class ManagerService {

	public void leaveBalances() throws ClassNotFoundException, SQLException {
		ManagerLeaveModel managerLeaveModel=new ManagerLeaveModel();
		System.out.println(managerLeaveModel.toString());
	}
	
	public void leaveApproval(int empId) throws ClassNotFoundException, SQLException {
		Connection connection=ConnectionManager.openConnection();
		PreparedStatement statement=connection.prepareStatement("update leaves set leave_status='Approved' where emp_id=?");
		statement.setInt(1, empId);
		statement.executeUpdate();
		System.out.println("Successfully approved leave request");
	}
	public void leaveRejection(int empId) throws ClassNotFoundException, SQLException {
		Connection connection=ConnectionManager.openConnection();
		PreparedStatement statement=connection.prepareStatement("update leaves set leave_status='Rejected' where emp_id=?");
		statement.setInt(1, empId);
		statement.executeUpdate();
		System.out.println("Successfully Rejected leave request");
	}
	
	public void LeaveList() throws ClassNotFoundException, SQLException {
		ArrayList<Leaves> requestList = new ArrayList();
		
		ManagerDAO managerDAO=new ManagerDAO();
		requestList = (ArrayList<Leaves>) managerDAO.getListOfLeaves();
		for(int i =0; i<requestList.size();i++)
		{
			System.out.println(requestList.get(i).toString());
		}
	}
}
