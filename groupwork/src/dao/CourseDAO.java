package dao;

import entity.Course;
import entity.Member;
import utils.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseDAO {

    public  Course QueryAllCourse(ResultSet rs) throws SQLException {
        Course course = new Course();
        try {
            course.setCourseId(rs.getInt("course_id"));
            course.setName(rs.getString("name"));
            course.setType(rs.getString("type"));
            course.setDuration(rs.getInt("duration"));
            course.setMaxCapacity(rs.getInt("max_capacity"));
            course.setEmployeeId(rs.getInt("employee_id"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return course;
    }

    public List<Course> getAllCourse()
    {
        List<Course> course = new ArrayList<>();
        String sql = "select * from course";
        try(Connection conn =DBUtil.getConnection();PreparedStatement pstmt=conn.prepareStatement(sql);ResultSet rs = pstmt.executeQuery() )
        {
            while(rs.next()){
                course.add(QueryAllCourse(rs));
            }

        }catch(SQLException e){
            e.printStackTrace();
        }
        return course;
    }

    public Course getCourseById(int courseId)
    {
        Course course = new Course();
        String sql = "select * from course where course_id = ?";
        try(Connection conn =DBUtil.getConnection();PreparedStatement pstmt=conn.prepareStatement(sql);ResultSet rs = pstmt.executeQuery() )
        {
            if (rs.next()) {
                course=QueryAllCourse(rs);
            }

        }catch(SQLException e){
            e.printStackTrace();
        }
        return course;
    }


}
