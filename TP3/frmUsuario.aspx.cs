using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3
{
    public partial class frmUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                ddlLocalidades.Items.Add("- Seleccione Localidad -");
            }
        }

        public void GuardarLocalidad()
        {
            string localidad = txtLocalidad.Text.Trim(); //Guarda el nombre de la localidad
            bool banderaLocalidad = false;

            foreach (ListItem item in ddlLocalidades.Items) //Recorre el dropdownlist localidades
            {
                if (localidad == item.Text) //Si es true quiere decir que la localidad ya existe y cambia el valor de la bandera
                {
                    banderaLocalidad = true;
                    break;
                }
            }

            txtLocalidad.Text = ""; //Limpiar textbox

            if (!banderaLocalidad) //Si no es verdadero quiere decir que la localidad no existe y procede a agregar la localidad
            {
                ddlLocalidades.Items.Add(new ListItem(localidad)); //Agregar localidad
                lblLocalidadRepetida.ForeColor = System.Drawing.Color.Green; //Cambiar color al label
                lblLocalidadRepetida.Text = "Localidad Agregada exitosamente";
            }
            else
            {
                lblLocalidadRepetida.ForeColor = System.Drawing.Color.Red;
                lblLocalidadRepetida.Text = "*Esta localidad ya se encuentra registrada*";            
            }
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            GuardarLocalidad();    
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            lblLocalidadRepetida.Text = ""; //Limpiar la casilla si se presiona el boton

            if (Page.IsValid)
            {
                string usuario = txtUsuario.Text.Trim();
                lblBienvenida.Text = "Bienvenido " + usuario;
            }
        }

        protected void btnInicioAspx_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBienvenida.aspx");
        }
    }
}