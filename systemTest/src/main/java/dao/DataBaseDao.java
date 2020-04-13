package dao;

import java.sql.*;

public class DataBaseDao {

    public Connection getConnect() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/webtest" +
                "?useSSL=false&useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC", "root", "lwy123456");
    }

    public void closeAll(Connection cn, Statement st, ResultSet rs) {
        if (cn != null) {
            try {
                cn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
