using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace PublicTransport.Api.Migrations
{
    public partial class paypalmig : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Paypals",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Cart = table.Column<string>(nullable: true),
                    CreateTime = table.Column<string>(nullable: true),
                    PaypalId = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    FirstName = table.Column<string>(nullable: true),
                    LastName = table.Column<string>(nullable: true),
                    PayerId = table.Column<string>(nullable: true),
                    PaymentMethod = table.Column<string>(nullable: true),
                    Status = table.Column<string>(nullable: true),
                    State = table.Column<string>(nullable: true),
                    Currency = table.Column<string>(nullable: true),
                    Total = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Paypals", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Paypals");
        }
    }
}
