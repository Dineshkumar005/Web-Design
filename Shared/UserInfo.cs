namespace IndustrialVisit.Shared;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

public class UserInfo
{
    [Key]
    public int id { get; set; }

    [Required,MinLength(3),MaxLength(50)]
    public string username { get; set; }
    [Required,MinLength(8),MaxLength(50),EmailAddress]
    public string email { get; set; }
    [Required,MinLength(8), MaxLength(50)]
    public string password { get; set; }
}