package Test;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Test;

import Util.JDBCutil;

public class test {
	@Test
    public void add() {
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        
        try {
            // 获取连接
            conn = JDBCutil.getConnection();
            
            // 编写sql
            String sql = "insert into User(username,userpass) values (?,?)";
            
            // 创建语句执行者
            st= conn.prepareStatement(sql);
            
            //设置参数
            st.setString(1, "tenfee");
            st.setString(2, "123456");
            
            // 执行sql
            int i = st.executeUpdate();
            
            if(i==1) {
                System.out.println("数据添加成功！");
            }else {
                System.out.println("数据添加失败！");
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCutil.colseResource(conn, st, rs);
        }
        
    }
}


