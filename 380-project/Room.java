public class Room {
    private int roomId;
    private String roomNum;
    private String roomType;
    private double price;
    private boolean availability;

    //constructor
    public Room(int roomId, String roomNum, String roomType, double price, boolean availability) {
        this.roomId = roomId;
        this.roomNum = roomNum;
        this.roomType = roomType;
        this.price = price;
        this.availability = availability;
    }

    //getters 
    public int getRoomId() {
        return roomId;
    }

    public String getRoomNum() {
        return roomNum;
    }

    public String getRoomType() {
        return roomType;
    }

    public double getPrice() {
        return price;
    }

    //setters
    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public void setRoomNum(String roomNum) {
        this.roomNum = roomNum;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setAvailability(boolean availability) {
        this.availability = availability;
    }


    public boolean isAvailability() {
        return availability;
    }

    @Override
    public String toString() {
        return "Room{" +
                "roomId=" + roomId +
                ", roomNumber='" + roomNum + '\'' +
                ", roomType='" + roomType + '\'' +
                ", price=" + price +
                ", availability=" + availability +
                '}';
    }
}
