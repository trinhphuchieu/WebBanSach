const donHang = require('../models/DonHang.models.js');
const sach = require('../models/Sach.models.js');
const theLoai = require('../models/TheLoai.models.js');
const nxb = require('../models/NXB.models.js');
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

         
            sach.layTLVaNXB1((err, kq1)=>{
                
                res.render('TrangSachA', { sach: kq});
           
            })
            
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
            if (!req.file) sachMoi.hinh_anh = 'khongco.jpg';
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
        sach.layTLVaNXB((err, kq)=>{
            if(err) return 'Có Lỗi';
            res.render('ThemSachA',{tl:kq[0],nxb:kq[1]});
        })
        
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
        if (typeof req.file === undefined) sach1.hinh_anh = undefined;
        else{
            
            sach1.hinh_anh = req.file.filename;
        } 
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

    
    //[GET] đơn hàng đang xử lý
    xemDonXuLy(req, res) {
        donHang.xemDonDangGiao((err, kq) => {
            if (err) {
                return res.status(500).send({
                    message:
                        err.message || "Có Lỗi hiển thị đơn hàng"
                });
            }
            res.render('DonHangA', { donHang: kq });
        })
    }

    //[GET] đơn hàng đang xử lý
    xemDonGiao(req, res) {
        donHang.DonHoanThanh((err, kq) => {
            if (err) {
                return res.status(500).send({
                    message:
                        err.message || "Có Lỗi hiển thị đơn hàng"
                });
            }
            res.render('DonHangA', { donHang: kq });
        })
    }



    // [GET] xem chi tiết đơn
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


    duyetDon(req, res) {
    
        donHang.duyetDon(req.params.id+'', (err, ct) => {
            if (err) {
                return res.status(500).send({
                    message:
                        err.message || "Có Lỗi hiển thị đơn hàng"
                });
            }
            
            return res.status(200).send({ message: ct, code: 200 });
        })
    }


    
    //[GET] thống kê
    thongKe(req, res) {
        donHang.thongKe((err,kq)=>{
          
        
            res.render('TrangThongKeA',{don_hang : kq[0][0].don_hang ,taiKhoan: kq[1][0].tai_khoan, dataDoanhThu: kq[2],dataDonHang: kq[3],dataTaiKhoan : kq[4],tongDoanhThu: kq[5][0].tong_doanh_thu});
        })
        
        
    }


    //---------------- THE LOAI


    quanLyTheLoai(req,res){
        theLoai.hienThi((err,kq) =>{
            return res.render('TheLoaiA',{the_loai:kq});
        })
    }
    xemTL(req, res){
        theLoai.xemTheoId(req.params.id,(err,kq) =>{
            return res.render('CapNhatTLA',{the_loai:kq});
        })
    }
    

    themTL(req, res){
        if(req.method == 'POST'){
            theLoai.themTheLoai(req.body,(err,kq) =>{
                
            })
            return res.redirect(req.baseUrl+'/theloai');
        }
        return res.render('ThemTLA');
    }

    xoaTL(req, res){
        theLoai.xoa(req.params.id,(err, kq)=>{
            return res.status(200).json({message:'Xóa Thành Công',code: 200});
        })
        
    }

    capNhatTL(req, res){
        theLoai.capNhatTheoID(req.body,(err,kq)=>{
            return res.redirect(req.baseUrl + '/theloai');
        })
    }


    //---------------- NXB

    quanLyNXB(req,res){
        nxb.hienThi((err,kq) =>{
            return res.render('NXBA',{the_loai:kq});
        })
    }
    xemNXB(req, res){
        nxb.xemTheoId(req.params.id,(err,kq) =>{
            return res.render('CapNhatNXB',{the_loai:kq});
        })
    }

    kiemTraHoatDong(req, res){
        if(req.session.admin !== null && req.params.id ===1){
            return res.status(200).send({code:200});
        }
        console.log('hieu');
    }
    

    themNXB(req, res){
        if(req.method == 'POST'){
            nxb.themTheLoai(req.body,(err,kq) =>{
                
            })
            return res.redirect(req.baseUrl+'/nxb');
        }
        return res.render('ThemNXB');
    }

    xoaNXB(req, res){
        nxb.xoa(req.params.id,(err, kq)=>{
            return res.status(200).json({message:'Xóa Thành Công',code: 200});
        })
        
    }

    capNhatNXB(req, res){
       
        nxb.capNhatTheoID(req.body,(err,kq)=>{
            return res.redirect(req.baseUrl + '/nxb');
        })
    }



    layDoanhThuNgay(req, res){
        donHang.doanhThuTheoNgay(req.params.id,(err, kq)=>{
            if(err) return res.status(500).send({code: 500});
            
            return res.status(200).send({code:200 , message: kq});
        })
    }
    dangXuat(req, res) {
        
        req.session.destroy(function(err) {
            return res.redirect(req.baseUrl);
         })
        
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