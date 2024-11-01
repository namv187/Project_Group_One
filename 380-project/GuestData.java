import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GuestData {
    
    public boolean addGuest(Guest guest) {
        String query= "INSERT INTO Guest (name, email, phone, address) VALUES (?, ?, ?, ?)";
        boolean guestAdded= false;
        try(Connection connection = SqlConnector.getConnection();
        PreparedStatement prep=connection.prepareStatement(query)){
            prep.setString(1,guest.getName());
            prep.setString(2,guest.getEmail());
            prep.setString(3,guest.getPhone());
            prep.setString(4,guest.getAddress());
            int rowChanged=prep.executeUpdate();
            guestAdded= rowChanged>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return guestAdded;
    }
    
    // Methods for other CRUD operations (getGuest, updateGuest, deleteGuest)...
    //int guestId, String name, String email, String phone, String address
    
    public Guest getGuestID(int guestID){
        Guest guest=null;
        String query= "SELECT * FROM Guest WHERE GuestID = ?";
        
        try(Connection connection = SqlConnector.getConnection();
        PreparedStatement prep=connection.prepareStatement(query)){
            prep.setInt(1, guestID);
            ResultSet result = prep.executeQuery();
            if(result.next()){
                guest = new Guest(
                    result.getInt("guestID"), 
                    result.getString("name"), 
                    result.getString("email"), 
                    result.getString("phone"), 
                    result.getString("address"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return guest;
    }
}
