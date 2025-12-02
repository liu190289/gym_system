import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabaseConnector {

    // 1. 数据库配置信息
    // 您的数据库名是 gym_system 
    private static final String URL = "jdbc:mysql://localhost:3306/gym_system?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";     // 您的数据库用户名
    private static final String PASSWORD = "123456"; // 您的数据库密码 (请修改)

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("✅ 驱动加载成功！");
        } catch (ClassNotFoundException e) {
            System.out.println("❌ 还是没找到驱动！请务必执行 'Add as Library' 操作！");
            return; // 终止程序
        }
        // 使用 try-with-resources 语法，自动关闭连接，无需手动调用 close()
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {

            System.out.println("成功连接到数据库！");

            // 2. 编写 SQL 查询
            // 根据您的 SQL 文件，member 表包含 member_id, name, phone, email 等字段 
            String sql = "SELECT member_id, name, phone, status FROM member WHERE status = ?";

            // 3. 创建 PreparedStatement (预编译语句，比 Statement 更安全，防注入)
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {

                // 设置参数：查询状态为 'active' 的会员 
                pstmt.setString(1, "active");

                // 4. 执行查询
                try (ResultSet rs = pstmt.executeQuery()) {

                    // 5. 处理结果集
                    System.out.println("--- 活跃会员列表 ---");
                    while (rs.next()) {
                        int id = rs.getInt("member_id");
                        String name = rs.getString("name");
                        String phone = rs.getString("phone");

                        System.out.printf("ID: %d | 姓名: %s | 电话: %s%n", id, name, phone);
                    }
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("连接失败，请检查 MySQL 服务是否启动，以及账号密码是否正确。");
        }
    }
}