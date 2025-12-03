package test;

import dao.MemberDAO;
import entity.Member;

public class MemberDAOTest {
    public static void main(String[] args) {
        MemberDAO memberDAO = new MemberDAO();
        //逻辑： 它告诉 forEach：“对于你遍历到的每一个元素，请直接把它作为参数传给 System.out.println 方法进行打印。”
        //forEach是一个循环
//        memberDAO.getAllMembers().forEach(System.out::println);
//        Member member1 = new Member(1,"小宁","18078902781","89090201@gmail.com","male",java.sql.Date.valueOf(java.time.LocalDate.of(2018,9,15)),java.sql.Date.valueOf(java.time.LocalDate.of(2025,9,15)),"active");
//        memberDAO.updateMember(member);
//        System.out.println( memberDAO.getMemberById(1));
        Member member2 = new Member("小宁","18078902781","89090201@gmail.com","male",java.sql.Date.valueOf(java.time.LocalDate.of(2018,9,15)),java.sql.Date.valueOf(java.time.LocalDate.of(2025,9,15)),"active");
        memberDAO.addMember(member2);
        memberDAO.getAllMembers().forEach(System.out::println);
    }
}
