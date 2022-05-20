const sach = require('../models/Sach.models.js');
const dangNhap = require('../models/DangNhap.models.js');
const donHang = require('../models/DonHang.models.js');
const theLoai = require('../models/TheLoai.models.js');
const connection = require('../models/db.js');
const { send } = require('express/lib/response');
var kiemTra = '';
var kt = true;
class TrangChuControllers {

    trangChu(req, res) {

        sach.hienThi2((err, kq) => {
            if (err) {
                console.log("Lỗi :" + err.message);
            }
            theLoai.hienThi((err,kq1)=>{
                if (req.session.tai_khoan !== undefined) {
                    req.session.the_loai =kq1;
                    return res.render('TrangChu', { sach: kq, tai_khoan: req.session.tai_khoan,ho_ten:req.session.ho_ten,theloai:kq1 });
                }
                return res.render('TrangChu', { sach: kq ,theloai:kq1});
            })
            
        });

    }

    trangKhachHang(req, res) {

        if(req.session.tai_khoan != undefined) {
            donHang.xemDonKhachHang(req.session.tai_khoan,(err, kq)=>{
                
                theLoai.hienThi((err,kq1)=>{
                    if (err) {
                        console.log("Lỗi lấy thể loại trang khách hàng:" + err.message);
                        return res.redirect('/');
                    }
                    dangNhap.layTaiKhoan(req.session.tai_khoan,(err, kq2)=>
                    {
                        
                    if(err) {
                        console.log("Lỗi lấy tài khoản khách hàng:" + err.message);
                        return res.redirect('/');
                        }
                       
                        console.log("Thông tin khách hàng - url:khachhang",kq2);
                        return res.render('TrangKhachHang',{donHang:kq , tai_khoan: req.session.tai_khoan,ho_ten:req.session.ho_ten,theloai:kq1 ,thongtin:kq2[0]});
                    })
                    
                })
                
            })
            return;
        }
        return res.redirect('/');

    }
    
    xoaDonHang(req, res) {

        if(req.session.tai_khoan != undefined) {
            donHang.xoaDonHang(req.params.id,(err, kq)=>{
                if (err) {
                    console.log("Lỗi :" + err.message);
                }
                res.status(200).send({code:200, message:'Xóa Thành Công'});
            })
            return;
        }
        return res.redirect('/');

    }


    trangHienThi(req, res) {    

        sach.hienThiTrang(4,3,req.query.p,(err,kq,min,max)=>{
            
            return res.render('TrangChu', { sach: kq,min:min,max:max ,theloai:req.session.the_loai});
        })
        
    }
    xemTatCa(req, res) {    
        if(req.query.p === undefined) req.query.p = 1;
        sach.hienThiTrang(4,20,req.query.p,(err,kq,min,max)=>{
            theLoai.hienThi((err,kq1)=>{
            return res.render('TrangSP', { sach: kq,min:min,max:max,trang:req.query.p , tai_khoan: req.session.tai_khoan,ho_ten:req.session.ho_ten,theloai:kq1 });
            });
        })
        
    }

    xemTheoTheLoai(req, res) {    
        if(req.query.p === undefined) req.query.p = 1;
        if(req.query.tl === undefined) return res.redirect('/sach');
        sach.hienThiTrangTheLoai(4,20,req.query.p,req.query.tl,(err,kq,min,max)=>{
            theLoai.hienThi((err,kq1)=>{
            return res.render('TrangTheLoai', { sach: kq,min:min,max:max,trang:req.query.p , tai_khoan: req.session.tai_khoan,ho_ten:req.session.ho_ten,theloai:kq1,ma_the_loai:req.query.tl});
            });
        })
        
    }

    hienThiSach(req, res) {

        sach.xemTheoId(req.params.id,(err, kq) => {
            if (err) {
                console.log("Lỗi :" + err.message);
            }
            if (req.session.tai_khoan !== undefined) {
                return res.render('XemChiTietSach', { sach: kq, tai_khoan: req.session.tai_khoan,ho_ten:req.session.ho_ten,theloai:req.session.the_loai });
            }
            return res.render('XemChiTietSach', { sach: kq});
        });

    }

    //[GET] đăng nhập
    dangNhap(req, res) {
        if(req.session.tai_khoan !== undefined) return res.redirect('/khachhang');
        if (kt) {
            kiemTra = '';
            return res.redirect('/');
        }
        else kt = true;
        return res.status(200).send({ code:401,message:kiemTra});
    }
    hello(){
        console.log('xin chao viet nam')
    }
    // [GET] xem chi tiết đơn
    xemChiTietDon(req, res) {
        if(req.session.tai_khoan === undefined) return res.redirect('/');
        donHang.xemDonChiTietKhachHang(req.params.id,req.session.tai_khoan, (err, ct) => {
            if (err) {
                return res.status(500).send({
                    message:
                        err.message || "Có Lỗi hiển thị đơn hàng"
                });
            }
            
            return res.status(200).send({ message: ct, code: 200 });
        })
    }
    //[POST] đăng nhập
    kiemTraDangNhap(req, res) {
        if (req.body !== undefined) {
            console.log(req.body)
            dangNhap.layTaiKhoan(req.body.tai_khoan, (err, kq) => {
                if (err) return res.status(500).send({
                    message:
                        err.message || "Có Lỗi Không thể lấy tài khoản"
                });
                kt = false;
                if (Object.keys(kq).length === 0) kiemTra = 'Tài khoản không tồn tại';
                else if (kq[0].mat_khau === req.body.mat_khau) {
                    req.session.tai_khoan = kq[0].tai_khoan;
                    req.session.ho_ten = kq[0].ho_ten;
                    console.log('check tài khoản');
                    return res.status(200).send({ code:200,message:'Đăng Nhập Thành Công'});
                }
                else kiemTra = ' Sai mật khẩu';
                
                return res.redirect(req.baseUrl + '/dangnhap');
            })
        }



    }
    //[GET,POST] ĐĂNG KÝ
    dangKy(req, res) {
        
        if (req.method === 'POST') {
            console.log("Hiếu đăng ký");
            delete req.body.confirm_password;
            if(Object.keys(req.body).length === 0) return;
            dangNhap.layTaiKhoan(req.body.tai_khoan,(err,kq1)=>{
                if (Object.keys(kq1).length !== 0) return res.status(200).send({code:401,message:'Tên tài khoản đã có'});
                dangNhap.themTaiKhoan(req.body,(err,kq)=>{
                    if (err) return res.status(500).send({
                        message:
                            err.message || "Có lỗi không thể thêm tài khoản"
                    });
                    return res.status(200).send({code:200,message:'Đăng Ký Thành Công'});
                    
    
                })
            })
            
        }
    }

    dangXuat(req, res) {
        
        req.session.destroy(function(err) {
            
            return res.redirect('/');
         })
        
    }

    
    testDangKy(req, res) {
        if (req.session.tai_khoan === undefined) return res.send({ message: 'vui long dang nhap', code: 500 });
        return res.send({ message: req.session.tai_khoan, code: 500 });
    }


}



module.exports = new TrangChuControllers();