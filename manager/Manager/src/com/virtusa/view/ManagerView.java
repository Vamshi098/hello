package com.virtusa.view;

import java.sql.SQLException;

import java.util.Scanner;

import com.virtusa.controller.ManagerController;
import com.virtusa.entities.Leaves;


public class ManagerView {

	Scanner sc=new Scanner(System.in);
	public void ManagerPage() throws ClassNotFoundException, SQLException {
		System.out.println("*****WELCOME TO MANAGER VIEW*******");
		System.out.println("1.View list of leave requests");
		System.out.println("2.logout");
		System.out.println("enter option");
		int option1=sc.nextInt();
		
		switch(option1) {
		
		case 1:
			/*Connection connection=ConnectionManager.openConnection();
			Statement statement=connection.createStatement();
			ResultSet resultSet=
					statement.executeQuery("select * from Leaves");
			resultSet.next();*/
			ManagerController managerController=new ManagerController();
			managerController.viewListOfLeaveRequests();
			System.out.println("enter emplopyee id to Check leave balences");
			int empId=sc.nextInt();
			managerController.leavebalances(empId);
			ManagerView managerView=new ManagerView();
			managerView.UpdateLeave(empId);
			
			break;
		case 2:
			System.out.println("successfully logged out");
			break;
		}
		
		
	}
	public void UpdateLeave(int empId) throws ClassNotFoundException, SQLException {
		System.out.println();
		System.out.println("1.Approve leave");
		System.out.println("2.Reject leave");
		System.out.println("choose options");
		int option2=sc.nextInt();
		ManagerController managerController=new ManagerController();
		switch(option2) {
		case 1:
			managerController.approveLeave(empId);
			break;
		case 2:
			managerController.rejectLeave(empId);
			break;
		}
			
	
	}
	
}
