using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Entidades;
using RegitroUsuario.Utilidades;


namespace RegitroUsuario.Registros
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               // LlenaCombo
                int id = Utils.ToInt(Request.QueryString["id"]);
                if (id > 0)
                {
                    RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
                    var categoria = repositorio.Buscar(id);

                    if (categoria == null)
                    {
                        MostrarMensaje(TiposMensaje.Error, "Registro no encontrado");

                    }
                    else
                    {
                        LlenaCampos(categoria);
                    }
                }
            }

        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            BLL.RepositorioBase<Usuarios> repositorio = new BLL.RepositorioBase<Usuarios>();
            Usuarios usuarios = new Usuarios();
            bool paso = false;

            LlenaClase(usuarios);

            if (usuarios.UsuariosId == 0)
                paso = repositorio.Guardar(usuarios);
            else
                paso = repositorio.Modificar(usuarios);

            if(paso)
            {
                MostrarMensaje(TiposMensaje.Success, "Guardado con Exito!");
                Limpiar();
            }
            else
                MostrarMensaje(TiposMensaje.Error, "Guardado con Exito!");
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(UsuarioIdTextBox.Text);
            RepositorioBase<Usuarios> repositorio = new BLL.RepositorioBase<Usuarios>();
            if (repositorio.Eliminar(id))
            {
                MostrarMensaje(TiposMensaje.Success, "Eliminado con Exito!");
            }
            else
                MostrarMensaje(TiposMensaje.Success, "Fallo al Eliminar");
            Limpiar();
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(UsuarioIdTextBox.Text);
            RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
            Usuarios usuarios = repositorio.Buscar(id);

            if (usuarios != null)
            {
                NombresTextBox.Text = usuarios.Nombres;
                NombreUsuarioTextBox.Text = usuarios.NombreUsuario;
                ContraseñaTextBox.Text = usuarios.Contraseña;
                ConfirmarContraseñaTextBox.Text = usuarios.ConfirmarContraseña;
                CargoDropDownList.Text = usuarios.Cargo;
            }
            else
                MostrarMensaje(TiposMensaje.Error, "Error, No Existe");
        }

        private void Limpiar()
        {
            UsuarioIdTextBox.Text = "0";
            NombresTextBox.Text = string.Empty;
            NombreUsuarioTextBox.Text = string.Empty;
            ContraseñaTextBox.Text = string.Empty;
            ConfirmarContraseñaTextBox.Text = string.Empty;
            CargoDropDownList.Text = string.Empty;
        }
        private Usuarios LlenaClase(Usuarios usuario)
        {
            int id;
            bool result = int.TryParse(UsuarioIdTextBox.Text, out id);
            if (result == true)
            {
                usuario.UsuariosId = id;
            }
            else
            {
                usuario.UsuariosId = 0;
            }

            usuario.Nombres = NombresTextBox.Text;
            usuario.NombreUsuario = NombreUsuarioTextBox.Text;
            usuario.Contraseña = ContraseñaTextBox.Text;
            usuario.ConfirmarContraseña = ConfirmarContraseñaTextBox.Text;
            usuario.Cargo = CargoDropDownList.Text;
            return usuario;
        }

        private void LlenaCampos(Usuarios usuarios)
        {
            UsuarioIdTextBox.Text = Convert.ToString(usuarios.UsuariosId);
            NombresTextBox.Text = usuarios.Nombres;
            NombreUsuarioTextBox.Text = usuarios.NombreUsuario;
            ContraseñaTextBox.Text = usuarios.Contraseña;
            ConfirmarContraseñaTextBox.Text = usuarios.ConfirmarContraseña;
           
        }

        private void MostrarMensaje(TiposMensaje tipo, string mensaje)
        {

            ErrorLabel.Text = mensaje;

            if (tipo == TiposMensaje.Success)
                ErrorLabel.CssClass = "alert-success";
            else
                ErrorLabel.CssClass = "alert-danger";
        }
    }
}