//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tree_Plantation.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class task
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public task()
        {
            this.assignedtasks = new HashSet<assignedtask>();
        }
    
        public int t_id { get; set; }
        public string prove_image { get; set; }
        public string deadline { get; set; }
        public string tree_type { get; set; }
        public string status { get; set; }
        public Nullable<int> v_id { get; set; }
        public string area { get; set; }
        public string time { get; set; }
        public Nullable<int> tree_number { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<assignedtask> assignedtasks { get; set; }
        public virtual volunteer volunteer { get; set; }
    }
}