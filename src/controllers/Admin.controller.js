const donHang = require('../models/DonHang.models.js');
const sach = require('../models/Sach.models.js');


class AdminController {
    adminMiddleware(req, res, next) {
        console.log(req.session.admin);
        if (req.session.admin) return next();

        if (req.method === 'POST') {

            var tK = req.body.taiKhoan;
            var mK = req.body.matKhau;
            // console.log("user: " + tK + "- pass: " + mK);
            if (checkAccount(tK, mK)) {
                req.session['admin'] = true;
                return res.status(200).json({ code: 200, message: 'Đăng Nhập thành công' });
            }
            return res.status(201).json({ code: 201, message: 'Đăng Nhập thất bại' });
        }
        return res.render('DangNhapA');
    }





    admin(req, res) {
        return res.render('TrangAdmin');
    }



    //[GET] sách
    quanLySach(req, res) {
        sach.hienThi((err, kq) => {
            if (err) {
                console.log("Lỗi :" + err.message);
            }
            return res.render('TrangSachA', { sach: kq });
        });

    }

    //[GET] xem sách theo mã 
    xemSach(req, res) {
        const ma_sach = req.params.id;
        sach.xemTheoId(ma_sach, (err, kq) => {
            if (err) {
                res.status(500).send({
                    message:
                        err.message || "Có Lỗi Không thể xem được"
                });
            }

            return res.render('CapNhatA', { sach: kq });
        })

    }

    // [POST, GET] tạo sách
    themSach(req, res) {

        if (req.method === 'POST') {
            const sachMoi = Object.assign({}, req.body);

            if (req.file.filename === undefined) sachMoi.hinh_anh = 'khongco';
            else sachMoi.hinh_anh = req.file.filename;

            sach.tao(sachMoi, (err, data) => {
                if (err)
                    res.status(500).send({
                        message:
                            err.message || "Có Lỗi"
                    });
            })
            return res.redirect(req.baseUrl + '/sach');
        }
        return res.render('ThemSachA');
    }

    //[DELETE] xóa sách
    xoaSach(req, res) {
        sach.xoa(req.params.id, (err, kq) => {
            if (err) {
                res.status(500).send({
                    message:
                        err.message || "Có Lỗi"
                });
            }
            res.status(200).json({ code: 200, message: 'Xóa Thành Công' });
        })
    }

    //[PUT] cập nhật sách
    capNhatSach(req, res) {
        const sach1 = req.body;
        if (req.file === undefined) sach1.hinh_anh = undefined;
        else sach1.hinh_anh = req.file.filename;
        sach.capNhatTheoID(sach1, (err, kq) => {
            if (err) {
                res.status(500).send({
                    message:
                        err.message || "Có Lỗi"
                });
            }
            return res.redirect(req.baseUrl + '/sach');
        })

    }

    //[GET] đơn hàng
    xemDonHang(req, res) {
        donHang.xemDonHang((err, kq) => {
            if (err) {
                return res.status(500).send({
                    message:
                        err.message || "Có Lỗi hiển thị đơn hàng"
                });
            }
            res.render('DonHangA', { donHang: kq });
        })
    }

    xemChiTietDon(req, res) {
    
        donHang.xemDonChiTiet(req.params.id, (err, ct) => {
            if (err) {
                return res.status(500).send({
                    message:
                        err.message || "Có Lỗi hiển thị đơn hàng"
                });
            }
            
            return res.status(200).send({ message: ct, code: 200 });
        })
    }


    //[GET] đơn chờ xử lý
    xemDonXuLy(req, res) {
        res.render('DonHangA');
    }

}


var taiKhoan = 'admin';
var matKhau = '1111';

function checkAccount(tK, mK) {
    if (taiKhoan !== tK) {
        return false;
    }
    if (taiKhoan === tK && matKhau === mK) {
        return true;
    }
    if (taiKhoan === tK && mK !== matKhau) {
        return false;
    }
}

module.exports = new AdminController();