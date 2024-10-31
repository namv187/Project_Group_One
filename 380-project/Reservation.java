import java.time.LocalDate;

public class Reservation {
    private int resId;
    private int guestId;
    private int roomId;
    private LocalDate checkInDate;
    private LocalDate checkOutDate;
    private double totalCost;
    private String status;

    public Reservation(int resId, int guestId, int roomId, LocalDate checkInDate, LocalDate checkOutDate, double totalCost, String status) {
        this.resId = resId;
        this.guestId = guestId;
        this.roomId = roomId;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
        this.totalCost = totalCost;
        this.status = status;
    }

    //getters
    public int getResId() {
        return resId;
    }
    public int getGuestId() {
        return guestId;
    }
    public int getRoomId() {
        return roomId;
    }
    public LocalDate getCheckInDate() {
        return checkInDate;
    }
    public LocalDate getCheckOutDate() {
        return checkOutDate;
    }
    public double getTotalCost() {
        return totalCost;
    }
        public String getStatus() {
        return status;
    }
    
    //setters
    public void setResId(int resId) {
        this.resId = resId;
    }

    public void setGuestId(int guestId) {
        this.guestId = guestId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public void setCheckInDate(LocalDate checkInDate) {
        this.checkInDate = checkInDate;
    }
    public void setCheckOutDate(LocalDate checkOutDate) {
        this.checkOutDate = checkOutDate;
    }

    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "reservationId=" + resId +
                ", guestId=" + guestId +
                ", roomId=" + roomId +
                ", checkInDate=" + checkInDate +
                ", checkOutDate=" + checkOutDate +
                ", totalCost=" + totalCost +
                ", status='" + status + '\'' +
                '}';
    }
}