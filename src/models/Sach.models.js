const { range } = require('express/lib/request');
const sql = require('./db.js');


const sach = function (book) {
    this.ma_sach = sach.ma_sach,
        this.the_loai = sach.the_loai,
        this.ten_sach = sach.ten_sach,
        this.tac_gia = sach.tac_gia,
        this.nxb = sach.nxb,
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
    sql.query("SELECT *,(SELECT ten_the_loai FROM the_loai WHERE ma_the_loai = the_loai) AS ten_TL,(SELECT ten_nxb FROM nha_xuat_ban WHERE ma_nxb = nxb) AS ten_NXB FROM sach ", (err, res) => {
        if (err) {
            console.log("Lỗi", err);
            kq(err, null);
            return;
        }
        kq(null, res);
    });
}



sach.hienThi2 = (kq) => {
    sql.query("SELECT *,(SELECT ten_the_loai FROM the_loai WHERE ma_the_loai = the_loai) AS ten_TL,(SELECT ten_nxb FROM nha_xuat_ban WHERE ma_nxb = nxb) AS ten_NXB FROM sach limit 10", (err, res) => {
        if (err) {
            console.log("Lỗi", err);
            kq(err, null);
            return;
        }
        kq(null, res);
    });
}


sach.layTLVaNXB = (kq) => {
    sql.query("SELECT * FROM the_loai;SELECT * FROM nha_xuat_ban", (err, res) => {
        if (err) {
            console.log("Lỗi", err);
            kq(err, null);
            return;
        }
        kq(null, res);
    });
}


sach.layTLVaNXB1 = (kq) => {
    sql.query("SELECT * FROM the_loai;SELECT * FROM nha_xuat_ban", (err, res) => {
        if (err) {
            console.log("Lỗi", err);
            kq(err, null);
            return;
        }
        var theLoai = {};
        var nxb = {};
        res[0].forEach((i)=>{
            theLoai[i.ma_the_loai]=i.ten_the_loai;
        })
        res[1].forEach((i)=>{
            nxb[i.ma_nxb]=i.ten_nxb;
        })
        kq(null, [theLoai,nxb]);
    });
}

sach.xoa = (ma_sach, kq) => {
    sql.query("DELETE FROM sach WHERE ma_sach = ?", ma_sach, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }

        console.log(`Xóa thành công ${res.affectedRows} sách`);
        kq(null, res);
    })
}


sach.xemTheoId = (ma_sach, kq) => {
    sql.query("SELECT *,(SELECT ten_the_loai FROM the_loai WHERE ma_the_loai = the_loai) AS ten_TL,(SELECT ten_nxb FROM nha_xuat_ban WHERE ma_nxb = nxb) AS ten_NXB FROM sach WHERE ma_sach = ?", ma_sach, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Kết quả lấy ra", res);
        kq(null, res);
    })
}

sach.capNhatTheoID = (sach, kq) => {

    var arr = [];
    var truyVan = ""
    if (sach.hinh_anh === undefined) {
        truyVan = "UPDATE sach SET ten_sach = ?,the_loai = ?,tac_gia = ?,mo_ta = ?,gia_nien_yet = ?,gia_ban = ?,so_luong = ? WHERE ma_sach = ?";
        arr = [sach.ten_sach, sach.the_loai, sach.tac_gia, sach.mo_ta, sach.gia_nien_yet, sach.gia_ban, sach.so_luong, sach.ma_sach];
    } else {
        truyVan = "UPDATE sach SET ten_sach = ?,the_loai = ?,tac_gia = ?,mo_ta = ?,gia_nien_yet = ?,gia_ban = ?,so_luong = ?,hinh_anh = ? WHERE ma_sach = ?";
        arr = [sach.ten_sach, sach.the_loai, sach.tac_gia, sach.mo_ta, sach.gia_nien_yet, sach.gia_ban, sach.so_luong, sach.hinh_anh, sach.ma_sach];
    }
    sql.query(truyVan, arr, (err, res) => {
        if (err) {
            console.log("Lỗi: ", err);
            kq(err, null);
            return;
        }
        console.log("Kết quả cập nhật", res);
        kq(null, res);
    })
}


sach.themDonHang = (donHang, kq) => {

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




sach.hienThiTrang = (r, n, p, kq) => {
    sql.query(`SELECT COUNT(*) as count FROM sach`, (err, res) => {
        if (err) {
            console.log("Lỗi lấy số sách", err);
            return;
        }
        const tong = res[0].count;
        const tongTrang = Math.ceil(res[0].count / n);
        if (p > tongTrang) {
            p = tongTrang;
        } else if (p < 0) {
            p = 1;
        }
        var s = (p - 1) * n;


        sql.query(`SELECT * FROM sach LIMIT ${s},${n}`, (err, res) => {
            if (err) {
                console.log("Lỗi lấy trang sách", err);
                kq(err, null);
                return;
            }
            var min = 0;
            var max = 0;
            
            if (parseInt(p) < Math.floor(r / 2)) {
              
                min = 1;        
                if((parseInt(p)*n)/(tong) < 1){
                    max = r;
                }else{
                    max = parseInt(p);
                }  
            }
            // if (parseInt(p) < Math.floor(r / 2)) {
            //     min = 1;
            //     max = r;
            // }
            else if ((tongTrang - Math.floor(r / 2)) < p) {
                max = tongTrang;
                min = tongTrang - r;
            } else {
                min = p - Math.floor(r / 2);
                max = parseInt(p) + Math.floor(r / 2);
            }

            kq(null, res, min <= 0 ? 1 : min, max + 1);

        });
    });
}


sach.hienThiTrangTheLoai = (r, n, p,tt, kq) => {
    sql.query(`SELECT COUNT(*) as count FROM sach where the_loai = ? `,tt, (err, res) => {
        if (err) {
            console.log("Lỗi lấy số sách", err);
            return;
        }
        const tong = res[0].count;
        const tongTrang = Math.ceil(res[0].count / n);
        if (p > tongTrang) {
            p = tongTrang;
        } else if (p < 0) {
            p = 1;
        }
        var s = (p - 1) * n;


        sql.query(`SELECT * FROM sach where the_loai = ? LIMIT ${s},${n}`,tt, (err, res) => {
            if (err) {
                console.log("Lỗi lấy trang sách", err);
                kq(err, null);
                return;
            }
            var min = 0;
            var max = 0;
            
            if (parseInt(p) < Math.floor(r / 2)) {
              
                min = 1;        
                if((parseInt(p)*n)/(tong) < 1){
                    max = r;
                }else{
                    max = parseInt(p);
                }  
            }
            else if ((tongTrang - Math.floor(r / 2)) < p) {
                max = tongTrang;
                min = tongTrang - r;
            } else {
                min = p - Math.floor(r / 2);
                max = parseInt(p) + Math.floor(r / 2);
            }

            kq(null, res, min <= 0 ? 1 : min, max + 1);

        });
    });
}



module.exports = sach;