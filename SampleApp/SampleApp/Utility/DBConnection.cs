using Microsoft.EntityFrameworkCore;
using SampleApp.Models.Entities;

namespace SampleApp.Utility
{
    public class DBConnection : DbContext
    {
        public DBConnection(DbContextOptions option) : base(option)
        {

        }
        public DbSet<Employee> Employees { get; set; }

    }
}