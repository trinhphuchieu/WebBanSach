const giohangController = require('../controllers/GioHang.controller.js');
const express = require('express');
const router = express.Router();

router.use(giohangController.kiemTraTaiKhoan);
router.get('/muahang',giohangController.dsMuaHang);
router.post('/',giohangController.dsHangMua);
router.get('/',giohangController.dsGioHang);


module.exports = router