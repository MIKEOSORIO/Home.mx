using DevExpress.Web.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PasosWeb.Controllers {
    public class HomeController : Controller {
        
        public ActionResult Index() {
           
            if (Session["IdUser"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "PaginaPrincipal");
            }
        }

        PasosWeb.Models.dbhomemxEntities2 db = new PasosWeb.Models.dbhomemxEntities2();

        [ValidateInput(false)]
        public ActionResult CardViewPartial()
        {
            var model = db.propiedad;
            return PartialView("_CardViewPartial", model.ToList());
        }

        [HttpPost, ValidateInput(false)]
        public ActionResult CardViewPartialAddNew(PasosWeb.Models.propiedad item)
        {
            var model = db.propiedad;
            if (ModelState.IsValid)
            {
                try
                {
                    model.Add(item);
                    db.SaveChanges();
                }
                catch (Exception e)
                {
                    ViewData["EditError"] = e.Message;
                }
            }
            else
                ViewData["EditError"] = "Please, correct all errors.";
            return PartialView("_CardViewPartial", model.ToList());
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult CardViewPartialUpdate(PasosWeb.Models.propiedad item)
        {
            var model = db.propiedad;
            if (ModelState.IsValid)
            {
                try
                {
                    var modelItem = model.FirstOrDefault(it => it.idpropiedad == item.idpropiedad);
                    if (modelItem != null)
                    {
                        this.UpdateModel(modelItem);
                        db.SaveChanges();
                    }
                }
                catch (Exception e)
                {
                    ViewData["EditError"] = e.Message;
                }
            }
            else
                ViewData["EditError"] = "Please, correct all errors.";
            return PartialView("_CardViewPartial", model.ToList());
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult CardViewPartialDelete(System.Int32 idpropiedad)
        {


            PasosWeb.Models.dbhomemxEntities2 model = new Models.dbhomemxEntities2();
            var propiedad = model.propiedad.Where(x => x.idpropiedad == idpropiedad).Single();
            #region consultas
            // se localizan las tablas relacionadas

            var servicios = model.servicios.Where(x => x.idservicios == propiedad.idservicios).Single();
            var direccion = model.direccion.Where(x => x.iddireccion == propiedad.iddireccion).Single();


            var usuario = model.usuario.Where(x => x.idusuario == propiedad.idusuario).Single();
            Session["usuarioPublicador"]= usuario.correo;
            #endregion
            #region rellenar
            // se llena la tabla PropiedadGeneral
            PasosWeb.Models.propiedadGeneral resumen = new Models.propiedadGeneral();
           
            resumen.auxiliarPropiedad = propiedad.auxiliar;
            resumen.descripcion = propiedad.descripcion;
            resumen.numCuartos = propiedad.numCuartos;
            resumen.espacioPersonas = propiedad.espacioPersonas;
            resumen.precio = propiedad.precio;
            resumen.deposito = propiedad.deposito;
            resumen.fechaPublicacion = (DateTime)propiedad.fechaAlta;
            resumen.status = propiedad.status;
            resumen.contrato = propiedad.contrato;
            // se llena la tabla servicios
            resumen.internet = (Boolean)servicios.internet;
            resumen.comida = (Boolean)servicios.comida;
            resumen.limpieza = (Boolean)servicios.limpieza;
            resumen.amueblado = (Boolean)servicios.amueblada;
            resumen.parking = (Boolean)servicios.parking;
            resumen.alberca = (Boolean)servicios.alberca;
            resumen.clima = (Boolean)servicios.clima;
            resumen.terraza = (Boolean)servicios.terraza;
            resumen.lavanderia = (Boolean)servicios.lavanderia;
            // se llena la tabla usuario
            resumen.nombre = usuario.nombre;
            resumen.apellido = usuario.apellido;
            resumen.correo = usuario.correo;
            resumen.telefono = usuario.telefono;
            // se llena la tabla direccion
            resumen.calle = direccion.calle;
            resumen.cruzamientos1 = direccion.cruzamiento1;
            resumen.cruzamientos2 = direccion.cruzamiento2;
            resumen.exterior = direccion.noExterior;
            resumen.localidad = direccion.localidad;
            resumen.estado = direccion.entidadFed;
            resumen.ubicacion = direccion.ubicacion;
            resumen.cp = direccion.cp;
            #endregion

            #region direccion
            
            Session["descripcion"] = resumen.descripcion;
            Session["calle"] = resumen.calle;
            Session["cruzamientos"] = resumen.cruzamientos1;
            Session["colonia"] = resumen.cruzamientos2;
            Session["exterior"] = resumen.exterior;
            Session["localidad"] = resumen.localidad;
            Session["estado"] = resumen.estado;
            Session["ubicacion"] = resumen.ubicacion;
            Session["cp"] = resumen.cp;
            #endregion

            #region propiedad
            Session["idusuario"] = propiedad.idusuario;
            Session["cuartos"] = resumen.numCuartos;
            Session["espacio"] = resumen.espacioPersonas;
            Session["precio"] = resumen.precio;
            Session["deposito"] = resumen.deposito;
            Session["contrato"] = resumen.contrato;
            #endregion

            #region usuario
            Session["correoUsuario"] = resumen.correo;
            #endregion

            #region servicios
            string v1 = "", v2="", v3="", v4="", v5="", v6="", v7="", v8="", v9="";
            
            if (resumen.internet == true) { v1 = "Aplica"; } else { v1 = "No aplica"; }
            Session["internet"] = v1;

            if (resumen.comida == true) { v1 = "Aplica"; } else { v1 = "No aplica"; }
            Session["comida"] = v1;

            if (resumen.limpieza == true) { v1 = "Aplica"; } else { v1 = "No aplica"; }
            Session["limpieza"] = v1;

            if (resumen.amueblado == true) { v1 = "Aplica"; } else { v1 = "No aplica"; }
            Session["amueblado"] = v1;

            if (resumen.parking == true) { v1 = "Aplica"; } else { v1 = "No aplica"; }
            Session["parking"] = v1;

            if (resumen.alberca == true) { v1 = "Aplica"; } else { v1 = "No aplica"; }
            Session["alberca"] = v1;

            if (resumen.clima == true) { v1 = "Aplica"; } else { v1 = "No aplica"; }
            Session["clima"] = v1;

            if (resumen.terraza == true) { v1 = "Aplica"; } else { v1 = "No aplica"; }
            Session["terraza"] = v1;

            if (resumen.lavanderia == true) { v1 = "Aplica"; } else { v1 = "No aplica"; }
            Session["lavanderia"] = v1;
            #endregion

            #region imagen
            Session["imagen"] = resumen.auxiliarPropiedad;
            #endregion

            //Session["imagen"] = imagen;
            // return View(resumen);
            return RedirectToAction("Index", "Propiedad");
        }
    }
}