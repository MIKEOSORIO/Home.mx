using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace PasosWeb.Controllers
{
    public class PropiedadController : Controller
    {
        // GET: Propiedad
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
        [HttpPost, ValidateInput(false)]
        public ActionResult EnviarFormulario(PasosWeb.Models.Formulario formulario )
        {
            PasosWeb.Models.usuario user = new Models.usuario();
            
            // es email del usuario logueado
            user.correo = (string)Session["Email"];
            user.telefono = (string)Session["Phone"];
            user.nombre = (string)Session["NameUser"];
            user.apellido = (string)Session["LastUser"];
          
           // user.nombre= 
            EmailUser(user, user.correo, user.telefono, user.nombre, user.apellido);
            return RedirectToAction("Index", "Propiedad");

        }
        public void EmailUser(PasosWeb.Models.usuario user, string correo, string telefono, string nombre, string apellido)
        {
            string emailpublicador = (string)Session["usuarioPublicador"];
            var fromAddress = new MailAddress("soporte.homemx@outlook.es", "Nombre de Soporte");
            var toAddress = new MailAddress(emailpublicador, "Estimado Usuario");
           

            const string fromPassword = "@miangelyazmin1A";
            const string subject = "Este usuario esta interesado en tu publicación";
            string body = "<body>" +
               "<h1>Solicitud de Envío de Información</h1>" +
               "<h2>Usuario</h2>" +
                "<h3>Nombre de Usuario: </h3>" + nombre +  " " + apellido + 
                "<h3>Correo Electrónico: </h3>" + correo +
                 "<h3>Telefono: </h3>" + telefono +
                "<br/>" +
               "<span>El correo maneja datos sensible, Por Favor, No comparta la Información ni Reenvíe el Correo</span>" +
               "<br/><br/><span>Saludos Cordiales.</span>" +
               "</body>";

            var smtp = new SmtpClient
            {
                Host = "smtp.office365.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                IsBodyHtml = true,
                Body = body
            })
            {
                smtp.Send(message);
            }
        }
    }
}