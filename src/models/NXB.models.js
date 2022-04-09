const { range } = require('express/lib/request');
const sql = require('./db.js');


const nxb = function (nxb){
    this.ma_nxb = nxb.ma_nxb,
    this.ten_nxb = nxb.ten_nxb,
    this.mo_ta = nxb.mo_ta
}

nxb.tao = (nxbMoi, kq) => {
    sql.query("INSERT INTO nha_xuat_ban SET ?", nxbMoi, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thêm NXB mới: ", { ...nxbMoi });
        kq(null, { ...nxbMoi });
    });
};
nxb.hienThi = (kq) => {
    sql.query("SELECT * FROM nha_xuat_ban", (err, res) => {
        if (err) {
            console.log("Lỗi", err);
            kq(err, null);
            return;
        }
        kq(null, res);
    });
}

nxb.xoa = (ma_nxb, kq) => {
    sql.query("DELETE FROM nha_xuat_ban WHERE ma_nxb = ?", ma_nxb, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }

        console.log(`Xóa thành công ${res.affectedRows} sách`);
        kq(null, res);
    })
}


nxb.xemTheoId = (ma_nxb, kq) => {
    sql.query("SELECT * FROM nha_xuat_ban WHERE ma_nxb = ?", ma_nxb, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Kết quả lấy ra", res);
        kq(null, res);
    })
}

nxb.capNhatTheoID = (nxb, kq) => {
    
    const truyVan = "UPDATE nha_xuat_ban SET ten_nxb = ?,mo_ta = ? WHERE ma_nxb = ?";
    arr = [nxb.ten_nxb,nxb.mo_ta, nxb.ma_nxb];
    sql.query(truyVan, arr, (err, res) => {
        if (err) {
            console.log("Lỗi cập nhật thể loại: ", err);
            kq(err, null);
            return;
        }
        console.log("Kết quả cập nhật NXB", res);
        kq(null, res);
    })
}


nxb.themTheLoai = (nxb, kq) => {

    sql.query("INSERT INTO nha_xuat_ban SET ?", nxb, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Thêm thể loại thành công: ", { ...nxb });
        kq(null, { ...nxb });
    });
}








module.exports = nxb;