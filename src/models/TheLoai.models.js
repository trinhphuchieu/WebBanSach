const { range } = require('express/lib/request');
const sql = require('./db.js');


const the_loai = function (the_loai){
    this.ma_the_loai = the_loai.ma_the_loai,
    this.ten_the_loai = the_loai.ten_the_loai,
    this.mo_ta = the_loai.mo_ta
}

the_loai.tao = (the_loaiMoi, kq) => {
    sql.query("INSERT INTO the_loai SET ?", the_loaiMoi, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thêm sách mới: ", { ...the_loaiMoi });
        kq(null, { ...the_loaiMoi });
    });
};
the_loai.hienThi = (kq) => {
    sql.query("SELECT * FROM the_loai", (err, res) => {
        if (err) {
            console.log("Lỗi", err);
            kq(err, null);
            return;
        }
        kq(null, res);
    });
}

the_loai.xoa = (ma_the_loai, kq) => {
    sql.query("DELETE FROM the_loai WHERE ma_the_loai = ?", ma_the_loai, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }

        console.log(`Xóa thành công ${res.affectedRows} sách`);
        kq(null, res);
    })
}


the_loai.xemTheoId = (ma_the_loai, kq) => {
    sql.query("SELECT * FROM the_loai WHERE ma_the_loai = ?", ma_the_loai, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Kết quả lấy ra", res);
        kq(null, res);
    })
}

the_loai.capNhatTheoID = (the_loai, kq) => {

    const truyVan = "UPDATE the_loai SET ten_the_loai = ?,mo_ta = ? WHERE ma_the_loai = ?";
    arr = [the_loai.ten_the_loai,the_loai.mo_ta, the_loai.ma_the_loai];
    sql.query(truyVan, arr, (err, res) => {
        if (err) {
            console.log("Lỗi cập nhật thể loại: ", err);
            kq(err, null);
            return;
        }
        console.log("Kết quả cập nhật thể loại", res);
        kq(null, res);
    })
}


the_loai.themTheLoai = (theLoai, kq) => {

    sql.query("INSERT INTO the_loai SET ?", theLoai, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thêm thể loại thành công: ", { ...theLoai });
        kq(null, { ...theLoai });
    });
}








module.exports = the_loai;