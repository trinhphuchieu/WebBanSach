const cauHinhDB = require('../config/db/db.config.js');
const mysql = require('mysql');

var ketNoi = mysql.createConnection({
    host: cauHinhDB.host,
    user: cauHinhDB.user,
    password: cauHinhDB.password,
    database: cauHinhDB.database
});


module.exports = ketNoi;