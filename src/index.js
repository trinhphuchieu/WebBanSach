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
            json(i) {return JSON.stringify(i)},
            tinhTrang(tt){return tt === 0 ? 'Chưa duyệt đơn':'Đã duyệt đơn';},
            chuyenGio(str){
                str = new Date(str);
                const a = ['Chủ nhật','Thứ hai','Thứ ba','Thứ tư','Thứ năm','Thứ sáu','Thứ bảy'];
                return `${a[str.getDay()]}, ngày ${str.getDate()} tháng ${str.getMonth()} năm ${str.getFullYear()} Lúc ${str.getHours()}:${str.getMinutes()}:${str.getSeconds()} ${str.getHours() <= 12 ? 'sáng' : 'chiều'}`;
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