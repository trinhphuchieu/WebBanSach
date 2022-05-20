function xemChiTietDon(donHang) {

    donHang = JSON.parse(donHang);
    $.ajax({
        type: "GET",
        url: `/admin/donhang/${donHang.ma_don_hang}`,
        success: function (res) {
            if (res.code === 200) {
                renderHoaDon(res.message, donHang);
            }

        },
        error: function (result) {
            alert('error');
        }
    });
}

function renderHoaDon(chiTiet, donHang) {
    var s = document.getElementsByClassName('modal-content');
    if (s === null) return;

    s[0].innerHTML = `<div class="card">
    <div class="card-header">
        Ngày đặt :
        <strong>01/01/01/2018</strong>
        <span  class="float-right"> <strong>Trạng Thái Đơn:</strong> <span id="trang-thai"></span></span>

    </div>
    <div class="card-body">
   
        <div class="row mb-4">
            
            <div class="col">
                <strong style="color: red; margin-left: 300px;">HÓA ĐƠN ĐIỆN TỬ</strong>
                <br>
                <strong>Mã Đơn Hàng: </strong><span id="ma-don"></span>
                <br>
                <strong>Tên người nhận: </strong><span id="ten"></span>
                <br>
                <strong>Số điện thoại: </strong><span id="sdt"></span>
                <br>
                <strong>Địa chỉ: </strong><span id="dc"></span>
                <br>
                <strong>Ngày đặt hàng: </strong><span id="ngay-dat"></span></span>
            
            </div>

        </div>

        <div class="table-responsive-sm">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th class="center">STT</th>
                        <th class="right">Tên Sách</th>
                        <th class="center">Số Lượng</th>
                        <th class="right">Đơn Giá</th>
                        <th class="right">Thành Tiền</th>
                    </tr>
                </thead>
                
                <tbody class='tt-donHang'>
                    
                </tbody>
            
                <tfoot>
                    
                </tfoot>
                
            </table>
            <table>
                <tr>
                    <td style="text-align:left; width:600px;">
                    <strong>Tổng Biên Lai</strong>
                    </td>
                    <th id="tong-tien" class="right">  
                        </th>
                </tr>
            </table>
            <div  id="btnDuyet" class="align-items-center"></div>
        </div>
    </div>
</div>`

    var btnDuyet = document.getElementById('btnDuyet');
    var ma_don = document.getElementById('ma-don');
    var ten = document.getElementById('ten');
    var sdt = document.getElementById('sdt');
    var dc = document.getElementById('dc');
    var trang_thai = document.getElementById('trang-thai');
    var ngay_dat = document.getElementById('ngay-dat');
    ngay_dat.innerHTML = chuyenGio(new Date(donHang.ngay_dat));
    ma_don.innerHTML= donHang.ma_don_hang;
    ten.innerHTML = donHang.ten_nn;
    sdt.innerHTML = donHang.sdt;
    dc.innerHTML = donHang.dia_chi;

    if(donHang.trang_thai_don === 0){
        btnDuyet.innerHTML = `<button class="btn btn-primary" style="margin-left: 320px;" onClick ="duyetDon()"> Xử Lý Đơn</button>`;
    }else if(donHang.trang_thai_don === 1){
        btnDuyet.innerHTML = `<button class="btn btn-primary" style="margin-left: 320px;" onClick ="duyetDon()"> Đã Xử Lý</button>`;
    }
    trang_thai.innerHTML = donHang.trang_thai_don === 0 ? 'Chưa Duyệt' : (donHang.trang_thai_don === 1 ? 'Đang Xử Lý' : 'Đã Giao');
    var s = document.getElementsByClassName('tt-donHang');
    var tien = document.getElementById('tong-tien');
    tien.innerHTML = number_format(donHang.tong_thanh_toan) + ' VNĐ';
    var c = 1;
    for(var i in chiTiet) {
        if (!chiTiet.hasOwnProperty(i)) continue;
        s[0].innerHTML += `<tr>
        <td>${c}</td>
        <td>${chiTiet[i].ten_sach}</td>
        <td>${chiTiet[i].so_luong}</td>
        <td>${number_format(chiTiet[i].don_gia)}</td>
        <td>${number_format(chiTiet[i].thanh_tien)}</td>
        </tr>`;
        c++;
    }
}

function chuyenGio(str) {
    const a = ['Chủ nhật', 'Thứ hai', 'Thứ ba', 'Thứ tư', 'Thứ năm', 'Thứ sáu', 'Thứ bảy'];
    return `${a[str.getDay()]}, ngày ${str.getDate()} tháng ${str.getMonth()} năm ${str.getFullYear()} Lúc ${str.getHours()}:${str.getMinutes()}:${str.getSeconds()} ${str.getHours() <= 12 ? 'sáng' : 'chiều'}`;
}
function duyetDon(duyetDon) {
    var ma_don = document.getElementById('ma-don');
    $.ajax({
        type: "POST",
        url: `/admin/donhang/${ma_don.innerHTML}`,
        success: function (res) {
            if (res.code === 200) {

                window.location.reload();
            }

        },
        error: function (result) {
            alert('error');
        }
    });


}


function huyDonHang(donHang) {
    donHang = JSON.parse(donHang);
    $.ajax({
        type: "DELETE",
        url: `/admin/donhang/${donHang.ma_don_hang}`,
        success: function (res) {
            if (res.code === 200) {
                window.location.reload();
            }

        },
        error: function (result) {
            alert('error');
        }
    });
}


function number_format(number, decimals, dec_point, thousands_sep) {
    // *     example: number_format(1234.56, 2, ',', ' ');
    // *     return: '1 234,56'
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
    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
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