
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SqlConnector {
    
    private static final String URL="jdbc:mysql://localhost:3306/test_db";
    private static final String USER="admin";
    private static final String PASSWORD="password";
    public static Connection getConnection(){
        Connection connection = null;
        try{
            connection=DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("You are connected.");
        } catch (SQLException e){
            System.out.println("Connection failed.");
            e.printStackTrace();
        }
        return connection;
    }
}
