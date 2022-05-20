const sql = require('./db.js');


const donHang = function (donHang) {
    this.ma_don_hang = donHang.ma_don_hang;
    this.tai_khoan = donHang.tai_khoan;
    this.ghi_chu = donHang.ghi_chu;
    this.tong_thanh_toan = donHang.tong_thanh_toan;
    this.trang_thai_don = donHang.trang_thai_don;
}

donHang.GuiDonHang = (ma_don_hang,chiTietDon,donHang1,ketQua) =>{
    sql.beginTransaction((err)=>{
        if(err) ketQua(err,null);
        donHang.themDonHang(donHang1, (err, kq) => {
            if (err) {
                ketQua(err,null);
                return sql.rollback(function() {
                    throw error;
                  });
            
            }
            for (var i of chiTietDon) {
                const chiTiet = { ma_don_hang: ma_don_hang, ma_sach: i.id, ten_sach: i.name.ten_sach, don_gia: i.name.gia_ban, so_luong: i.quantity, thanh_tien: i.quantity * i.name.gia_ban };
                donHang.themChiTietDonHang(chiTiet, (err, kq) => {
                    if (err) {
                        ketQua( err,null);
                        return sql.rollback(function() {
                            throw error;
                          });
                    }
                });

            }
            sql.commit(function(err) {
                if (err) {
                  return sql.rollback(function() {
                    throw err;
                  });
                }
                console.log('Thêm đơn đặt hàng thành công!');
              });
        })
         
    })
}
donHang.xemDonHang = (kq) => {

    sql.query("SELECT * FROM don_dat_hang WHERE trang_thai_don = 0", (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thông tin Đơn Hàng: ", { ...res });
        kq(null, { ...res });
    });
}


donHang.xoaDonHang = (ma_don,kq) => {

    sql.query("DELETE FROM don_dat_hang WHERE ma_don_hang = ?",ma_don,(err, res) => {
        if (err) {
            console.log("Lỗi xóa: ", err);
            kq(err, null);
            return;
        }
        console.log("Xóa đơn thành công: ", { ...res });
        kq(null, { ...res });
    });
}
donHang.xemDonKhachHang = (tai_khoan,kq) => {

    sql.query("SELECT * FROM don_dat_hang WHERE tai_khoan = ? ORDER BY trang_thai_don ASC",tai_khoan, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thông tin Đơn Hàng: ", { ...res });
        kq(null, { ...res });
    });
}

donHang.xemDonDangGiao = (kq) => {

    sql.query("SELECT * FROM don_dat_hang WHERE trang_thai_don = 1", (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thông tin Đơn Hàng: ", { ...res });
        kq(null, { ...res });
    });
}

donHang.DonHoanThanh = (kq) => {

    sql.query("SELECT * FROM don_dat_hang WHERE trang_thai_don = 2", (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thông tin Đơn Hàng: ", { ...res });
        kq(null, { ...res });
    });
}





donHang.duyetDon = (ma_don_hang ,kq) => {

    sql.query("SELECT trang_thai_don FROM don_dat_hang WHERE ma_don_hang = ?",ma_don_hang,(err, res) =>{
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        var b = 0;
      
        if(res[0].trang_thai_don === 0)  b = 1
        else b = 2; 
           
        
        sql.query("UPDATE don_dat_hang SET trang_thai_don = ? WHERE ma_don_hang = ?",[b,ma_don_hang],(err, res) => {
            if (err) {
                console.log("Lỗi: ", err);
                kq(err, null);
                return;
            }
            console.log("Duyệt đơn thành công: ", { ...res });
            kq(null, { ...res });
        });
    })
    
}


donHang.xemDonChiTiet = (ma_don_hang, kq) => {

    sql.query("SELECT * FROM chi_tiet_don where ma_don_hang = ?", ma_don_hang, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thông tin chi tiết đơn hàng: ", { ...res });
        kq(null, { ...res });
        return res;
    });
}


donHang.xemDonChiTietKhachHang = (ma_don_hang,tai_khoan, kq) => {

    sql.query("SELECT * FROM chi_tiet_don  INNER JOIN don_dat_hang WHERE chi_tiet_don.ma_don_hang = don_dat_hang.ma_don_hang and don_dat_hang.tai_khoan = ? and don_dat_hang.ma_don_hang = ?", [tai_khoan,ma_don_hang], (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thông tin chi tiết đơn hàng: ", { ...res });
        kq(null, { ...res });
        return res;
    });
}



donHang.themDonHang = (donHang, kq) => {

    sql.query("INSERT INTO don_dat_hang SET ?", donHang, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thêm đơn đặt hàng mới thành công: ", { ...donHang });
        kq(null, { ...donHang });
    });
}




donHang.themChiTietDonHang = (chiTietDon, kq) => {

    sql.query("INSERT INTO chi_tiet_don SET ?", chiTietDon, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thêm chi tiết đơn hàng thành công: ", { ...chiTietDon });
        kq(null, { ...chiTietDon });
    });
}


var queryTaiKhoan = "SELECT COUNT(*) AS tong_doanh_thu,YEAR(ngay_tao_tk) AS nam, MONTH(ngay_tao_tk) as thang FROM `khach_hang` GROUP BY YEAR(ngay_tao_tk),MONTH(ngay_tao_tk) ORDER BY YEAR(ngay_tao_tk),MONTH(ngay_tao_tk)";
var queryDonHang = "SELECT COUNT(*) AS tong_doanh_thu,YEAR(ngay_dat) AS nam, MONTH(ngay_dat) AS thang FROM don_dat_hang GROUP BY YEAR(ngay_dat),MONTH(ngay_dat) ORDER BY YEAR(ngay_dat),MONTH(ngay_dat)";
var queryDoanhThu = "SELECT YEAR(ngay_dat) AS nam, MONTH(ngay_dat) AS thang, SUM(tong_thanh_toan) AS tong_doanh_thu FROM don_dat_hang GROUP BY YEAR(ngay_dat),MONTH(ngay_dat)ORDER BY YEAR(ngay_dat),MONTH(ngay_dat)";
donHang.thongKe = (kq) => {

    sql.query("SELECT COUNT(*) AS don_hang FROM don_dat_hang; SELECT COUNT(*) AS tai_khoan  FROM khach_hang;"+queryDoanhThu+";"+queryDonHang+";"+queryTaiKhoan+";SELECT SUM(tong_thanh_toan) as tong_doanh_thu FROM don_dat_hang where YEAR(ngay_dat) = 2022", (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("XEM THỐNG KÊ: ", { ...res });
        kq(null, { ...res });
    });
}


donHang.doanhThuTheoNgay = (i,kq) => {

    sql.query("SELECT SUM(tong_thanh_toan) AS DOANHTHU,DAY(ngay_dat) AS NGAY FROM don_dat_hang where MONTH(ngay_dat) = ? GROUP BY DAY(ngay_dat) ORDER BY DAY(ngay_dat);",i, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("XEM THỐNG KÊ DOANH THU THEO NGAY: ", { ...res });
        kq(null, { ...res });
    });
}












module.exports = donHang;