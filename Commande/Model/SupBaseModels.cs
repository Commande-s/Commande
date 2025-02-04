using Commande.Data;
using Supabase;
using Supabase.Postgrest;
using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;
using Supabase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Supabase.Postgrest.QueryOptions;

namespace Commande.Model
{
    public class MainClass : BaseModel
    {
        protected ConnectionDB _connection = new();
    }

    [Table("usuarios")]
    public class Users : MainClass
    {
        [PrimaryKey("id_usuario")]
        public int idUser {  get; set; }

        [Column("nome")]
        public string Username {  get; set; }

        [Column("email")]
        public string Email { get; set; }

        [Column("senha")]
        public string Password { get; set; }

        [Column("id_tipo_usuario")]
        public int IdTypeUser { get; set; }

        public Users()
        {
            _connection = new ConnectionDB();
        }

        public Users(string userName, string email, string password)
        {
            Username = userName;
            Email = email;
            Password = password;
        }

        public async Task<bool> InsertUser()
        {
            try
            {
                var client = _connection.GetClient();
                var response = await client.From<Users>().Insert(this);
                return response.Models.Count > 0; // Retorna verdadeiro se inserção for bem-sucedida
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erro ao inserir usuário: {ex.Message}");
                return false;
            }
        }
    }
}
