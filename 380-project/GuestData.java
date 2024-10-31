import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GuestData {
    private Connection connection;

    public GuestData(Connection connection) {
        this.connection = connection;
    }

    public void addGuest(Guest guest) throws SQLException {
        String sql = "INSERT INTO Guests (name, email, phone, address) VALUES (?, ?, ?, ?)";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setString(1, guest.getName());
            pstmt.setString(2, guest.getEmail());
            pstmt.setString(3, guest.getPhone());
            pstmt.setString(4, guest.getAddress());
            pstmt.executeUpdate();
        }
    }
    
    // Methods for other CRUD operations (getGuest, updateGuest, deleteGuest)...
}