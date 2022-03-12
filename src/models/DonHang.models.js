const sql = require('./db.js');


const donHang = function (donHang) {
    this.ma_don_hang = donHang.ma_don_hang;
    this.tai_khoan = donHang.tai_khoan;
    this.ghi_chu = donHang.ghi_chu;
    this.tong_tien = donHang.tong_tien;
    this.trang_thai_don = donHang.trang_thai_don;
}


donHang.xemDonHang = (kq) => {

    sql.query("SELECT * FROM don_hang", (err, res) => {
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

    sql.query("UPDATE don_hang SET trang_thai_don = 1 WHERE ma_don_hang = ?",ma_don_hang,(err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Duyệt đơn thành công: ", { ...res });
        kq(null, { ...res });
    });
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



donHang.themDonHang = (donHang, kq) => {

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











module.exports = donHang;