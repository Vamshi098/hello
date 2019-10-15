package com.virtusa.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import com.virtusa.dao.ManagerDAO;
import com.virtusa.entities.Leaves;
import com.virtusa.service.ManagerService;
import com.virtusa.view.ManagerView;

public class ManagerController {

	public void viewListOfLeaveRequests() throws ClassNotFoundException, SQLException 
	{
		/*ArrayList<Leaves> requestList = new ArrayList();
		
		ManagerDAO managerDAO=new ManagerDAO();
		requestList = (ArrayList<Leaves>) managerDAO.getListOfLeaves();
		for(int i =0; i<requestList.size();i++)
		{
			System.out.println(requestList.get(i).toString());
		}*/
		
		ManagerDAO managerDAO=new ManagerDAO();
		managerDAO.getListOfLeaves();
		ManagerService managerService=new ManagerService();
		managerService.LeaveList();
	}
	public void leavebalances(int empId) throws ClassNotFoundException, SQLException {
		ManagerDAO managerDAO=new ManagerDAO();
		managerDAO.checkLeaveBalances(empId);
		
		/*ManagerService managerService=new ManagerService();
		managerService.leaveBalances();*/
	}
	public void approveLeave(int empId) throws ClassNotFoundException, SQLException {
		ManagerService managerService=new ManagerService();
		managerService.leaveApproval(empId);
		
		ManagerView managerView=new ManagerView();
		managerView.ManagerPage();
	}
	public void rejectLeave(int empId) throws ClassNotFoundException, SQLException {
		ManagerService managerService=new ManagerService();
		managerService.leaveRejection(empId);
		
		ManagerView managerView=new ManagerView();
		managerView.ManagerPage();
	}

}
