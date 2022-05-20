function phanTrang() {

    var obj = document.getElementsByClassName('pagination');

   
}
function trang(){
    $.ajax({
        type: "GET",
        url: "/giohang",
        success: function (res) {

            if (res.code === 404) {
                
                
                return;
            }
            cartLS.add({ id: sach.ma_sach, name: sach, price: sach.gia_ban });
            alert("Đã thêm vào giỏ hàng.");


        },
        error: function (result) {
            alert('error');
        }
    });
}
phanTrang();

