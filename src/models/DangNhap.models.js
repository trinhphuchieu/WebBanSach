const sql = require('./db.js');


const dangNhap = function (dangNhap) {
    this.tai_khoan = dangNhap.tai_khoan;
    this.mat_khau = dangNhap.mat_khau;
    this.ho_ten = dangNhap.ho_ten;
    this.sdt = dangNhap.sdt;
    this.ngay_sinh = dangNhap.ngay_sinh;
    this.dia_chi = dangNhap.dia_chi;
}





dangNhap.themTaiKhoan = (taiKhoan,kq) =>{
    console.log('sql tài khoản');
    sql.query("INSERT INTO khach_hang SET ? ",taiKhoan, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thêm tài khoản thành công: ", { ...taiKhoan });
        kq(null, { ...taiKhoan });
    }); 
}

dangNhap.layTaiKhoan = (tai_khoan,kq) =>{

    sql.query("SELECT * FROM khach_hang WHERE tai_khoan = ?", tai_khoan, (err, res) => {
        if (err) {
            console.log("Lỗi lấy tài khoản: ", err);
            kq(err, null);
            return;
        }
        console.log("Lấy tài khoản: ", { ...res });
        kq(null, { ...res });
    }); 
}

dangNhap.CapNhatTaiKhoan = (tai_khoan,thongTin,kq) =>{

    sql.query("UPDATE khach_hang SET ? WHERE tai_khoan = ?",thongTin, tai_khoan, (err, res) => {
        if (err) {
            console.log("Lỗi cập nhật tài khoản: ", err);
            kq(err, null);
            return;
        }
        console.log("Thông tin sau cập nhật: ", { ...res });
        kq(null, { ...res });
    }); 
}


module.exports = dangNhap;