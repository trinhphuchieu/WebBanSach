
const trangChuController = require('../controllers/TrangChu.controller.js');

const express = require('express');
const router = express.Router();


router.get('/dangnhap', trangChuController.dangNhap);
router.post('/dangnhap', trangChuController.kiemTraDangNhap);


router.get('/khachhang', trangChuController.trangKhachHang);
router.get('/khachhang/:id', trangChuController.xemChiTietDon);
router.delete('/khachhang/:id', trangChuController.xoaDonHang);
router.get('/dangky', trangChuController.dangKy);
router.post('/dangky', trangChuController.dangKy);
router.get('/dangxuat', trangChuController.dangXuat);
router.get('/sach', trangChuController.xemTatCa);
router.get('/theloai', trangChuController.xemTheoTheLoai);
router.get('/:id', trangChuController.hienThiSach);

router.get('/', trangChuController.trangChu);

router.post('/', trangChuController.trangChu);

module.exports = router;