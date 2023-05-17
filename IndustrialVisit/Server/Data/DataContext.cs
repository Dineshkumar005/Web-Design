namespace IndustrialVisit.Server.Data;

public class DataContext : DbContext
{
    public DbSet<Package> packages { get; set; }
    public DbSet<Place> places { get; set; }
    public DbSet<UserInfo> userInfo { get; set; }

    public DataContext(DbContextOptions<DataContext> options) : base(options)
    {

    }
}