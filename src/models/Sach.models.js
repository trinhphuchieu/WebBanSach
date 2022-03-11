const sql = require('./db.js');


const sach = function (book) {
    this.ma_sach = sach.ma_sach,
        this.the_loai = sach.the_loai,
        this.ten = sach.ten,
        this.tac_gia = sach.tac_gia,
        this.hinh_anh = sach.hinh_anh,
        this.gia_ban = sach.gia_ban,
        this.mo_ta = sach.mo_ta,
        this.so_luong = sach.so_luong,
        this.gia_nien_yet = sach.gia_nien_yet
}

sach.tao = (sachMoi, kq) => {
    sql.query("INSERT INTO sach SET ?", sachMoi, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thêm sách mới: ", { ...sachMoi });
        kq(null, { ...sachMoi });
    });
};
sach.hienThi = (kq) => {
    sql.query("SELECT * FROM sach", (err, res) => {
        if (err) {
            console.log("Lỗi", err);
            kq(err, null);
            return;
        }
        kq(null,res);
    });
}

sach.xoa = (ma_sach,kq) =>{
    sql.query("DELETE FROM sach WHERE ma_sach = ?",ma_sach,(err, res) =>{
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
          }
      
          console.log(`Xóa thành công ${res.affectedRows} sách`);
          kq(null, res);
    })
}


sach.xemTheoId = (ma_sach,kq) =>{
    sql.query("SELECT * FROM sach WHERE ma_sach = ?",ma_sach,(err, res) =>{
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
          }
          console.log("Kết quả lấy ra",res);
          kq(null, res);
    })
}

sach.capNhatTheoID = (sach,kq) =>{

    var arr = [];
    var truyVan = ""
    if(sach.hinh_anh === undefined){
        truyVan = "UPDATE sach SET ten = ?,the_loai = ?,tac_gia = ?,mo_ta = ?,gia_nien_yet = ?,gia_ban = ?,so_luong = ? WHERE ma_sach = ?";
        arr = [sach.ten,sach.the_loai,sach.tac_gia,sach.mo_ta,sach.gia_nien_yet,sach.gia_ban,sach.so_luong,sach.ma_sach];
    }else {
        truyVan = "UPDATE sach SET ten = ?,the_loai = ?,tac_gia = ?,mo_ta = ?,gia_nien_yet = ?,gia_ban = ?,so_luong = ?,hinh_anh = ? WHERE ma_sach = ?";
        arr = [sach.ten,sach.the_loai,sach.tac_gia,sach.mo_ta,sach.gia_nien_yet,sach.gia_ban,sach.so_luong,sach.hinh_anh,sach.ma_sach];
    }
    sql.query(truyVan,arr,(err, res) =>{
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
          }
          console.log("Kết quả cập nhật", res);
          kq(null, res);
    })
}


sach.themDonHang = (donHang,kq) =>{

    sql.query("INSERT INTO don_hang SET ?", donHang, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thêm đơn đặt hàng mới thành công: ", { ...donHang });
        kq(null, { ...donHang });
    });
}




module.exports = sach;