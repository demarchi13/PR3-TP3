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
        //PUNTO 3
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                ddlLocalidades.Items.Add("- Seleccione Localidad -");
            }
        }

        //PUNTO 4
        public void GuardarLocalidad()
        {
            //PUNTO 4.1
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

            //PUNTO 4.2
            txtLocalidad.Text = ""; //Limpiar textbox

            //PUNTO 4.3 Crear el if y el else y sol agregar la localidad
            if (!banderaLocalidad) //Si no es verdadero quiere decir que la localidad no existe y procede a agregar la localidad
            {
                ddlLocalidades.Items.Add(new ListItem(localidad)); //PUNTO 4.3 Agregar localidad
                lblLocalidadRepetida.ForeColor = System.Drawing.Color.Green; //PUNTO 4.2 Cambiar color al label
                lblLocalidadRepetida.Text = "Localidad Agregada exitosamente"; //PUNTO 4.2 Agregar mensaje
            }
            else
            {
                lblLocalidadRepetida.ForeColor = System.Drawing.Color.Red; //PUNTO 4.2
                lblLocalidadRepetida.Text = "*Esta localidad ya se encuentra registrada*"; //PUNTO 4.2            
            }
        }

        //PUNTO 5
        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            GuardarLocalidad();    
        }

        //PUNTO 6 Crear el evento
        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            lblLocalidadRepetida.Text = ""; //PUNTO 6 Limpiar la casilla si se presiona el boton

            //PUNTO 6 Crear solo el if y comprobar que todas las validaciones de la pagina esten bien
            if (Page.IsValid)
            {
                string usuario = txtUsuario.Text.Trim(); //PUNTO 6.1 Guardar el nombre de usuario
                lblBienvenida.Text = "Bienvenido " + usuario; //PUNTO 6.1 Mensaje
            }
        }

        //PUNTO 7 Crear el vento que redirige al frm Bienvenida
        protected void btnInicioAspx_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBienvenida.aspx");
        }
    }
}
