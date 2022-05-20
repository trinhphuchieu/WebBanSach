const { response } = require("express");
const donDatHang = require("../models/DonHang.models");
const dangNhap = require("../models/DangNhap.models");
class GiohangController {

    kiemTraTaiKhoan(req, res, next) {
        console.log(req.session.tai_khoan);
    
        if (req.session.tai_khoan === undefined) return res.redirect('/');
        next();

    }
    dsGioHang(req, res) {

        return res.render('GioHang',{tai_khoan: req.session.tai_khoan,ho_ten:req.session.ho_ten,theloai:req.session.the_loai});


    }

    dsMuaHang(req, res) {
        dangNhap.layTaiKhoan(req.session.tai_khoan, (err, kq) => {
            console.log(kq);
            return res.render('DatMua', { tai_khoan1: kq[0],tai_khoan: req.session.tai_khoan,ho_ten:req.session.ho_ten,theloai:req.session.the_loai});
        })

    }
    dsHangMua(req, res) {
        if (req.body !== undefined) {
            const ghiChu = req.body.ghiChu === undefined ? '' : req.body.ghiChu;
            const ma_don_hang = 'DH_' + req.session.tai_khoan + '_' + Date.now();
            var chiTietDon = req.body.donHang;
             
            var donHang = { ma_don_hang: ma_don_hang, tai_khoan: req.session.tai_khoan,ten_nn:req.body.thongTin.ten_nn,dia_chi:req.body.thongTin.dia_chi,sdt:req.body.thongTin.sdt, tong_thanh_toan: req.body.tongTien, ghi_chu: ghiChu };
            donDatHang.GuiDonHang(ma_don_hang,chiTietDon, donHang, (err, kq) => {
                if (err) {
                    return res.status(500).send({
                        message:
                            err.message || "Có Lỗi Không thể thêm chi tiết đơn hàng"
                    });
                }
                req.method='GET';
                return res.status(200).send({ code: 200, message:'Mua Hàng Thành Công' }); 
               
            });
            
        }

    }
}

module.exports = new GiohangController();