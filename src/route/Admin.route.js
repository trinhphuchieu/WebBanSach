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


// DANG NHAP
router.use(adminController.adminMiddleware);
router.get('/dangxuat', adminController.dangXuat);

router.get('/thang/:id', adminController.layDoanhThuNgay);
// THONG KE
router.get('/thongke/', adminController.thongKe);

// SACH
router.get('/sach/', adminController.quanLySach);

router.put('/sach/:id',upload.single('hinh_anh'),adminController.capNhatSach);
router.get('/sach/:id', adminController.xemSach);
router.get('/themsach/', adminController.themSach);
router.post('/themsach/', upload.single('hinh_anh'), adminController.themSach);
router.delete('/sach/:id', adminController.xoaSach);

// THE LOAI

router.put('/theloai/:id',adminController.capNhatTL);
router.get('/theloai/:id', adminController.xemTL);
router.delete('/theloai/:id', adminController.xoaTL);
router.get('/themtl',adminController.themTL);
router.post('/themtl',adminController.themTL);
router.get('/theloai', adminController.quanLyTheLoai);


// NXB

router.put('/nxb/:id',adminController.capNhatNXB);
router.get('/nxb/:id', adminController.xemNXB);
router.delete('/nxb/:id', adminController.xoaNXB);
router.get('/themnxb',adminController.themNXB);
router.post('/themnxb',adminController.themNXB);
router.get('/nxb', adminController.quanLyNXB);


//DON HANG

router.get('/donhang/', adminController.xemDonHang);
router.get('/donhang/:id', adminController.xemChiTietDon);
router.post('/donhang/:id', adminController.duyetDon);
router.get('/donxuly/', adminController.xemDonXuLy);
router.get('/donhoanthanh/', adminController.xemDonGiao);
router.get('/', adminController.admin);


module.exports = router;
