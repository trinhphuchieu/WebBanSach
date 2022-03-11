const sach = require('../models/Sach.models.js');
const dangNhap = require('../models/DangNhap.models.js');
var kiemTra = '';
var kt = true;
class TrangChuControllers {

    trangChu(req, res) {

        sach.hienThi((err, kq) => {
            if (err) {
                console.log("Lỗi :" + err.message);
            }
            return res.render('TrangChu', { sach: kq });
        });

    }

    //[GET] đăng nhập
    dangNhap(req, res) {
        if(kt) kiemTra = '';
        else kt = true; 
        return res.render('DangNhap', {kiemTra : kiemTra});
    }


    //[POST] đăng nhập
    kiemTraDangNhap(req, res) {
        if (req.body !== undefined) {
            
            dangNhap.layTaiKhoan(req.body.tai_khoan, (err, kq) => {
                if (err) return res.status(500).send({
                    message:
                        err.message || "Có Lỗi Không thể lấy tài khoản"
                });
                kt = false;
                if (Object.keys(kq).length === 0)  kiemTra = 'Tài khoản không tồn tại';
                else if (kq[0].mat_khau === req.body.mat_khau) {
                    req.session.tai_khoan = kq[0].tai_khoan;
                    return res.redirect(req.baseUrl+'/');
                }
                else kiemTra = ' Sai mật khẩu';
                return res.redirect(req.baseUrl + '/dangnhap');
            })
        }


        
    }

    dangKy(req, res) {

        if (req.method === 'POST') {

        }
        return res.render('TrangChu');

    }

    testDangKy(req,res){
        if(req.session.tai_khoan === undefined) return res.send({message: 'vui long dang nhap',code:500});
        return res.send({message: req.session.tai_khoan,code:500});
    }


}



module.exports = new TrangChuControllers();