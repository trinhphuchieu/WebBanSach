const adminController = require('../controllers/Admin.controller');
const express = require('express');
const path = require('path');


const multer = require('multer');

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'src/public/uploads')
    },
    filename: function (req, file, cb) {
        const uniqueSuffix = Date.now() + '-' + file.originalname
        cb(null, file.fieldname + '-' + uniqueSuffix)
    }
})

const upload = multer({ storage: storage })
const router = express.Router();





router.use(adminController.adminMiddleware);
router.get('/sach/', adminController.quanLySach);
router.put('/sach/:id',upload.single('hinh_anh'),adminController.capNhatSach);
router.get('/sach/:id', adminController.xemSach);
router.delete('/sach/:id', adminController.xoaSach);
router.get('/themsach/', adminController.themSach);
router.post('/themsach/', upload.single('hinh_anh'), adminController.themSach);
router.get('/donhang/', adminController.xemDonHang);
router.get('/donhang/:id', adminController.xemChiTietDon);
router.get('/donxuly/', adminController.xemDonXuLy);
router.get('/', adminController.admin);

module.exports = router;
