namespace YoomsHotel.Models
{
    public class RoomModel
    {
        public int Id { get; set; }
        public int RoomNumber { get; set; }
        public RoomTypeModel RoomType { get; set; }
    }
}
