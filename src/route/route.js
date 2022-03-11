const r_TrangChu = require('./TrangChu.route');
const r_TrangAdmin = require('./Admin.route');
const r_GioHang = require('./GioHang.route');


function route(app){
    app.use('/admin', r_TrangAdmin);
    app.use('/giohang',r_GioHang);
    
    app.use('/',r_TrangChu);
}



module.exports = route;