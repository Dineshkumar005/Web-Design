using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace  IndustrialVisit.Shared;

public class Package
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.None)]
    public int PackId { get; set; }

    public string CompName { get; set; } 

    [MaxLength(500)]
    public string Description { get; set; } 
    public string Category { get; set; }

    [Range(minimum: 1, maximum: 5)]
    public int NoOfDays { get; set; }

    public string Imgurl { get; set; } 
    public string Number { get; set; } 
    public string Location { get; set; } 
    public string LocationURL { get; set; } 
    public string OfficalURL { get; set; } 
    [Range(minimum: 0, maximum: 5)]
    public float Ratings { get; set; }
    public List<Place> Places { get; set; }
}