namespace YoomsHotel.Models
{
    public class BookingsModel
    {
        public RoomModel Room { get; set; }
        public GuestModel Guest { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public bool CheckedIn { get; set; }
        public decimal TotalCost { get; set; }
    }
}
