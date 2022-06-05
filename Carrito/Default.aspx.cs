using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace Carrito
{
    public partial class _Default : Page
    {

        
        public List<Articulo> listaArt { get; set;}    
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();

            listaArt = negocio.Listar();       

    }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {


        }

}