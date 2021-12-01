namespace BaiTap.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.ComponentModel;
    public partial class Nha_CC
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Nha_CC()
        {
            Hangs = new HashSet<Hang>();
        }

        [Key]
        [StringLength(10)]
        [Required(ErrorMessage = "Mã nhà cung cấp không được để trống")]
        public string MaNCC { get; set; }

        [Required(ErrorMessage = "Tên nhà cung cấp không được để trống")]
        [StringLength(50)]
        [DisplayName("Tên nhà cung cấp")]
        public string TenNCC { get; set; }

        [StringLength(50)]
        [Required(ErrorMessage = "Địa chỉ nhà cung cấp không được để trống")]
        [DisplayName("Địa chỉ")]
        public string DiaChi { get; set; }

        [StringLength(15)]
        [Required(ErrorMessage = "Số điện thoại nhà cung cấp không được để trống")]
        [DisplayName("Số điện thoại")]
        public string DienThoai { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Hang> Hangs { get; set; }
    }
}
