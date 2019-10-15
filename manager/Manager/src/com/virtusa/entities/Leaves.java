package com.virtusa.entities;

import java.sql.Date;

public class Leaves {

		private int  leave_Id;
		private int employee_Id;
		private String leave_Type;
		private Date from_Date;
		private Date to_Date;
		private String designation;
		private String leave_Status;
		public int getLeave_Id() {
			return leave_Id;
		}
		public void setLeave_Id(int leave_Id) {
			this.leave_Id = leave_Id;
		}
		public int getEmployee_Id() {
			return employee_Id;
		}
		public void setEmployee_Id(int employee_Id) {
			this.employee_Id = employee_Id;
		}
		public String getLeave_Type() {
			return leave_Type;
		}
		public void setLeave_Type(String leave_Type) {
			this.leave_Type = leave_Type;
		}
		public Date getFrom_Date() {
			return from_Date;
		}
		public void setFrom_Date(Date from_Date) {
			this.from_Date = from_Date;
		}
		public Date getTo_Date() {
			return to_Date;
		}
		public void setTo_Date(Date to_Date) {
			this.to_Date = to_Date;
		}
		public String getDesignation() {
			return designation;
		}
		public void setDesignation(String designation) {
			this.designation = designation;
		}
		
		public String getLeave_Status() {
			return leave_Status;
		}
		public void setLeave_Status(String leave_Status) {
			this.leave_Status = leave_Status;
		}
		@Override
		public String toString() {
			return "Leaves [leave_Id=" + leave_Id + ", employee_Id=" + employee_Id + ", leave_Type=" + leave_Type
					+ ", from_Date=" + from_Date + ", to_Date=" + to_Date + ", designation=" + designation
					+  ", leave_Status=" + leave_Status + "]";
		}
		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + ((designation == null) ? 0 : designation.hashCode());
			result = prime * result + employee_Id;
			result = prime * result + ((from_Date == null) ? 0 : from_Date.hashCode());
			result = prime * result + leave_Id;
			result = prime * result + ((leave_Status == null) ? 0 : leave_Status.hashCode());
			result = prime * result + ((leave_Type == null) ? 0 : leave_Type.hashCode());
			result = prime * result + ((to_Date == null) ? 0 : to_Date.hashCode());
			return result;
		}
		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Leaves other = (Leaves) obj;
			if (designation == null) {
				if (other.designation != null)
					return false;
			} else if (!designation.equals(other.designation))
				return false;
			if (employee_Id != other.employee_Id)
				return false;
			if (from_Date == null) {
				if (other.from_Date != null)
					return false;
			} else if (!from_Date.equals(other.from_Date))
				return false;
			if (leave_Id != other.leave_Id)
				return false;
			if (leave_Status == null) {
				if (other.leave_Status != null)
					return false;
			} else if (!leave_Status.equals(other.leave_Status))
				return false;
			if (leave_Type == null) {
				if (other.leave_Type != null)
					return false;
			} else if (!leave_Type.equals(other.leave_Type))
				return false;
			if (to_Date == null) {
				if (other.to_Date != null)
					return false;
			} else if (!to_Date.equals(other.to_Date))
				return false;
			return true;
		}
		
		
}
