using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PasosWeb.Controllers
{
    public class PublicarPropiedadController : Controller
    {

        PasosWeb.Models.dbhomemxEntities2 db = new PasosWeb.Models.dbhomemxEntities2();
        // GET: Registro
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult GridViewPartialAddNew(PasosWeb.Models.propiedadGeneral item, HttpPostedFileBase file)
        {
            item.nombre = Session["NameUser"].ToString();
            item.apellido = Session["LastUser"].ToString();
            PasosWeb.Models.propiedad propiedad = new Models.propiedad();
            var model = db.propiedad;
            if (ModelState.IsValid)
            {
                try
                {
                    // guardar tabla direccion
                    PasosWeb.Controllers.DireccionController direccion = new DireccionController();
                    propiedad.iddireccion= direccion.GridViewPartialAddNew(item);

                    // guardar tabla servicios
                    PasosWeb.Controllers.ServiciosController servicio = new ServiciosController();
                    propiedad.idservicios = servicio.GridViewPartialAddNew(item);

                    propiedad.numCuartos = item.numCuartos;
                    propiedad.precio = item.precio;
                    propiedad.deposito = item.deposito;
                    propiedad.status = "Activo";
                    propiedad.contrato = item.contrato;
                    propiedad.fechaAlta = DateTime.Now;
                    
                    propiedad.idusuario = (int)Session["IdUser"];
                    propiedad.auxiliar = Guardar(file, item);
                    model.Add(propiedad);
                    db.SaveChanges();
                    // buscar registro de propiedad 
                    //var propiedades = model.ToList();
                    //var registro = propiedades.Where(x => x.fechaAlta == id).Single();
                    // guardar tabla servicios
                    //PasosWeb.Controllers.ImagenController imagen = new ImagenController();
                    //imagen.GridViewPartialAddNew(item, registro.idpropiedad,file);
                }
                catch (Exception e)
                {
                    ViewData["EditError"] = e.Message;
                }
            }
            else
                ViewData["EditError"] = "Please, correct all errors.";
            //return PartialView("_CardViewPartial", model.ToList());
            return RedirectToAction("Index", "PaginaPrincipal");
        }
        public string Guardar(HttpPostedFileBase postedFile, PasosWeb.Models.propiedadGeneral item)
        {
            string url = "";
            if (postedFile != null)
            {
                string path = Server.MapPath("~/Documents/");
                string directorio = "~/Documents/";
                String folder = item.nombre + " " + item.apellido + "/";
                String ubicacion = path + folder;
                if (!Directory.Exists(ubicacion))
                {
                    Directory.CreateDirectory(path);
                    Directory.CreateDirectory(path + folder);
                }
                try
                {
                    postedFile.SaveAs(ubicacion + Path.GetFileName(postedFile.FileName));
                    url = directorio + folder + Path.GetFileName(postedFile.FileName);
                }
                catch { }
                item = null;
                postedFile = null;
            }
            return url;
        }
    }
}