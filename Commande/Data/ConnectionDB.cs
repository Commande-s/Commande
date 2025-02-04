using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Supabase;

namespace Commande.Data
{
    public class ConnectionDB
    {
        private Client _supabaseClient;

        public ConnectionDB()
        {
            _supabaseClient = ConnectDB().Result;
        }

        private async Task<Client> ConnectDB()
        {
            string strUrl = "https://vvdqzewkhgzbiggzojmk.supabase.co";
            string strKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ2ZHF6ZXdraGd6YmlnZ3pvam1rIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc2Nzk1MTksImV4cCI6MjA1MzI1NTUxOX0.zFCriD__DomBfsXDwB21cP-IxIT5VoaHTY0OCq8epxM";

            SupabaseOptions options = new SupabaseOptions
            {
                AutoConnectRealtime = true
            };

            var supabase = new Client(strUrl, strKey, options);
            await supabase.InitializeAsync();
            return supabase;
        }

        public Client GetClient()
        {
            return _supabaseClient;
        }
    }
}
