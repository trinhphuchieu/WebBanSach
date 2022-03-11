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
            
            <div class="col-sm-6">
                <strong style="color:red;">HÓA ĐƠN ĐIỆN TỬ</strong>
                <br>
                <strong>Mã Đơn Hàng: </strong><span id="ma-don"></span></span>
                 <div id="ten">Madalinskiego 8</div>
                 <span> <strong>Tài Khoản: </strong><span id="tai-khoan"></span></span>
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
                    <tr>
                        <td style="text-align:center;">
                            <strong>Tổng Biên Lai</strong>
                        </td>
                      
                        <td></td>
                        <td></td>
                        <td></td>

                        <th id="tong-tien" class="right">  
                        </th>
                    </tr>
                </tfoot>
                
            </table>
            <div class="align-items-center"><button class="btn btn-primary" onClick ="duyetDon()"> Duyệt Đơn Hàng</button></div>
        </div>
    </div>
</div>`
    var ten = document.getElementById('ten');
    var tai_khoan = document.getElementById('tai-khoan');
    var trang_thai = document.getElementById('trang-thai');
    var ma_don = document.getElementById('ma-don');
    ma_don.innerHTML = donHang.ma_don_hang;
    tai_khoan.innerHTML = donHang.tai_khoan;
    trang_thai.innerHTML = donHang.trang_thai_don === 0 ? 'Chưa Duyệt': 'Đang Xử Lý';
    var s = document.getElementsByClassName('tt-donHang');
    var tien = document.getElementById('tong-tien');
    tien.innerHTML = donHang.tong_tien +' VNĐ';
    var c = 1;
    for(var i in chiTiet){
        console.log(i);
        if(!chiTiet.hasOwnProperty(i)) continue;
        s[0].innerHTML += `<tr>
        <td>${c}</td>
        <td>${chiTiet[i].ten}</td>
        <td>${chiTiet[i].so_luong}</td>
        <td>${chiTiet[i].don_gia}</td>
        <td>${chiTiet[i].thanh_tien}</td>
        </tr>`;
        c++;
    }

}
function duyetDon(duyetDon){
    $.ajax({
        type: "POST",
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