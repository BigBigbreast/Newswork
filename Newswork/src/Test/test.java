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
            // 鑾峰彇杩炴帴
            conn = JDBCutil.getConnection();
            
            // 缂栧啓sql
            String sql = "insert into User(username,userpass) values (?,?)";
            
            // 鍒涘缓璇彞鎵ц鑰�
            st= conn.prepareStatement(sql);
            
            //璁剧疆鍙傛暟
            st.setString(1, "tenfee");
            st.setString(2, "123456");
            
            // 鎵цsql
            int i = st.executeUpdate();
            
            if(i==1) {
                System.out.println("数据插入成功");
            }else {
                System.out.println("数据插入失败");
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCutil.colseResource(conn, st, rs);
        }
        
    }
}


