package entity;

import java.util.Date;

public class Member extends Person {
    private String status;

    public Member() {
    }

    public Member(int id, String name, String phone, String email) {
        super(id, name, phone, email);
    }

    public Member(int id, String name, String phone, String email, String gender, Date birthDate, Date registerDate) {
        super(id, name, phone, email, gender, birthDate, registerDate);
    }

    public Member(int id, String name, String phone, String email, String status) {
        super(id, name, phone, email);
        this.status = status;
    }


    public String getStatus() {
        return status;
    }


    public void setStatus(String status) {
        this.status = status;
    }


    public int getMemberId() {
        return getId();
    }


    /**
     * 找到这个对象的范围是教练学生还是..
     *
     *
     *
     */


    @Override
    public String getRole() {
        return "Member";
    }



   @Override
   public String toString() {
       return "Member{" +
               "id=" + getId() +
               ", name='" + getName() + '\'' +
               ", phone='" + getPhone() + '\'' +
               ", email='" + getEmail() + '\'' +
               ", status='" + status + '\'' +
               '}';
   }



}
