//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PasosWeb.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class propiedad
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public propiedad()
        {
            this.renta = new HashSet<renta>();
        }
    
        public int idpropiedad { get; set; }
        public string descripcion { get; set; }
        public int numCuartos { get; set; }
        public int espacioPersonas { get; set; }
        public int precio { get; set; }
        public int deposito { get; set; }
        public Nullable<System.DateTime> fechaAlta { get; set; }
        public string status { get; set; }
        public string contrato { get; set; }
        public Nullable<int> idimagen { get; set; }
        public int iddireccion { get; set; }
        public int idservicios { get; set; }
        public int idusuario { get; set; }
        public string auxiliar { get; set; }
    
        public virtual direccion direccion { get; set; }
        public virtual imagen imagen { get; set; }
        public virtual servicios servicios { get; set; }
        public virtual usuario usuario { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<renta> renta { get; set; }
    }
}
