const giohangController = require('../controllers/GioHang.controller.js');
const express = require('express');
const router = express.Router();

router.use(giohangController.kiemTraTaiKhoan);
router.get('/muahang',giohangController.dsMuaHang);
router.get('/',giohangController.dsGioHang);
router.post('/',giohangController.dsHangMua);

module.exports = router