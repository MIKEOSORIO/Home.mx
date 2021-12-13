﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PasosWeb.Controllers
{
    public class VisualizarPropiedadController : Controller
    {
        // GET: VisualizarPropiedad
        public ActionResult Index()
        {
            if (Session["IdUser"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "PaginaPrincipal");
            }
        }
    }
}