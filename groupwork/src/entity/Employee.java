package entity;

import java.util.Date;

public class Employee implements Person{
    private int employeeId;
    private String name;
    private String role; // 'trainer', 'receptionist', 'admin'
    private String phone;
    private Date hireDate; // 入职日期

    public Employee() {
    }

    public Employee(int employeeId, String name, String role, String phone, Date hireDate) {
        this.employeeId = employeeId;
        this.name = name;
        this.role = role;
        this.phone = phone;
        this.hireDate = hireDate;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    @Override
    public int getId() {
        return employeeId;
    }

    @Override
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String getRole() {
        return role;
    }

    @Override
    public String getBasicInfo() {
        return employeeId+" - "+name+" - "+role+" - "+phone;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getHireDate() {
        return hireDate;
    }

    public void setHireDate(Date hireDate) {
        this.hireDate = hireDate;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "employeeId=" + employeeId +
                ", name='" + name + '\'' +
                ", role='" + role + '\'' +
                ", phone='" + phone + '\'' +
                ", hireDate=" + hireDate +
                '}';
    }

}
