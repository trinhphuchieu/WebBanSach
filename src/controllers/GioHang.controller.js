const { response } = require("express");
const donDatHang = require("../models/DonHang.models");
const dangNhap = require("../models/DangNhap.models");
class GiohangController {

    kiemTraTaiKhoan(req, res, next) {
        console.log(req.session.tai_khoan);
        if (req.session.tai_khoan === undefined) return res.status(200).json({ code: 404, message: 'Chưa Đăng Nhập' });
        next();

    }
    dsGioHang(req, res) {

        return res.render('GioHang');


    }

    dsMuaHang(req, res) {
        dangNhap.layTaiKhoan(req.session.tai_khoan, (err, kq) => {
            console.log(kq);
            return res.render('DatMua', { tai_khoan: kq[0] });
        })

    }
    dsHangMua(req, res) {
        if (req.body !== undefined) {
            const ghiChu = req.body.ghiChu === undefined ? '' : req.body.ghiChu;
            const ma_don_hang = 'DH_' + req.session.tai_khoan + '_' + Date.now();
            var chiTietDon = req.body.donHang;

            var donHang = { ma_don_hang: ma_don_hang, tai_khoan: req.session.tai_khoan, tong_thanh_toan: req.body.tongTien, ghi_chu: ghiChu };
            donDatHang.GuiDonHang(ma_don_hang,chiTietDon, donHang, (err, kq) => {
                if (err) {
                    return res.status(500).send({
                        message:
                            err.message || "Có Lỗi Không thể thêm chi tiết đơn hàng"
                    });
                }
                return res.status(200).json({ code: 200, message: "Mua Hàng Thành Công" });
            });
            // donDatHang.themDonHang(donHang, (err, kq) => {
            //     if (err) {
            //         return res.status(500).send({
            //             message:
            //                 err.message || "Có Lỗi Không thể thêm đơn hàng"
            //         });
            //     }

            //     for (var i of chiTietDon) {
            //         const chiTiet = { ma_don_hang: ma_don_hang, ma_sach: i.id, ten_sach: i.name.ten, don_gia: i.name.gia_ban, so_luong: i.quantity, thanh_tien: i.quantity * i.name.gia_ban };
            //         donDatHang.themChiTietDonHang(chiTiet, (err, kq) => {
            //             if (err) {
            //                 return res.status(500).send({
            //                     message:
            //                         err.message || "Có Lỗi Không thể thêm chi tiết đơn hàng"
            //                 });
            //             }
            //         });

            //     }

            //     return res.status(200).json({ code: 200, message: "Mua Hàng Thành Công" });
            // });

        }

    }
}

module.exports = new GiohangController();