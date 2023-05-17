using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace IndustrialVisit.Shared;

public class Place
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.None)]
    public int pid { get; set; }

    [ForeignKey("PackId")]
    public int PackId { get; set; }
    
    public int Day { get; set; }
    public string PlaceName { get; set; } 
    public string Time { get; set; } 
    public string ImgUrl { get; set; } 
    public string Description { get; set; } 
    public string Location { get; set; } 
    public string LocationURL { get; set; } 
}