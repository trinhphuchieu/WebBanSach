
const trangChuController = require('../controllers/TrangChu.controller.js');

const express = require('express');
const router = express.Router();


router.get('/dangnhap', trangChuController.dangNhap);
router.post('/dangnhap', trangChuController.kiemTraDangNhap);


router.use('/dangky', trangChuController.testDangKy);
router.get('/dangky', trangChuController.dangKy);
router.post('/dangky', trangChuController.dangKy);


router.get('/', trangChuController.trangChu);
router.get('/sach', trangChuController.trangHienThi);
router.post('/', trangChuController.trangChu);

module.exports = router;