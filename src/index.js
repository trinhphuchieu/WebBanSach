// kết nối module
const express = require('express');
const { engine } = require('express-handlebars');
const route = require('./route/route.js');
const path = require('path');
var morgan = require('morgan');
var session = require('express-session');
var methodOverride = require('method-override')




const app = express();
app.use(methodOverride('_method'))
app.use(session({
    secret: 'keyboard cat',
    resave: true,
    saveUninitialized: false,
}))

app.use(
    express.urlencoded({
        extended: true,
    }),
);
app.use(express.json());
app.use(express.static(path.join(__dirname, '/public/')));
app.use(morgan(':method :url :status :res[content-length] - :response-time ms'))
app.engine('hbs', engine(
    {
        extname: ".hbs",
        defaultLayout: false,
        partialsDir: path.join(__dirname, 'views', 'partials'),
        helpers: {
            json(i) {
                console.log(i);
                return JSON.stringify(i);
            },
            
            tinhTrang(tt) { return tt === 0 ? 'Chưa Duyệt' : (tt === 1 ? 'Đang Xử Lý' : 'Đã Giao'); },
            chuyenGio(str) {
                str = new Date(str);
                const a = ['Chủ nhật', 'Thứ hai', 'Thứ ba', 'Thứ tư', 'Thứ năm', 'Thứ sáu', 'Thứ bảy'];
                return `${a[str.getDay()]}, ngày ${str.getDate()} tháng ${str.getMonth()+1} năm ${str.getFullYear()} Lúc ${str.getHours()}:${str.getMinutes()}:${str.getSeconds()} ${str.getHours() <= 12 ? 'sáng' : 'chiều'}`;
            },
            array(dataDoanhThu) {

                // dataDoanhThu.forEach( (v,i) => a[i] = v.toString());
                var a = dataDoanhThu.map((v, i) => JSON.stringify(v));

                return a;
            },


            doanhThuThang(dataDoanhThu,thang) {

                // dataDoanhThu.forEach( (v,i) => a[i] = v.toString());
                var a = 0;
                dataDoanhThu.forEach((v, i) => {
                    const s = JSON.parse(JSON.stringify(v));
                    console.log(thang + " thangsss " + s.thang);
                    if(thang === s.thang){
                        a = v.tong_doanh_thu;
                        
                    }
                });
                

                return a;
            },
            ktTT(check){
                if(parseInt(check)===0) return '';
                return 0;
            },

            number_format(number, decimals, dec_point, thousands_sep) {
                number = (number + '').replace(',', '').replace(' ', '');
                var n = !isFinite(+number) ? 0 : +number,
                    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
                    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
                    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
                    s = '',
                    toFixedFix = function (n, prec) {
                        var k = Math.pow(10, prec);
                        return '' + Math.round(n * k) / k;
                    };
                s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
                if (s[0].length > 3) {
                    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
                }
                if ((s[1] || '').length < prec) {
                    s[1] = s[1] || '';
                    s[1] += new Array(prec - s[1].length + 1).join('0');
                }
                return s.join(dec);
            }
        },
    }
));

app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));




route(app);







const port = 3000;
app.listen(port, () => {
    console.log(`Hệ thống đang lắng nghe ở cổng ${port}...`)
})