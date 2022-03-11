function renderHang(sp) {
    const sach = document.querySelector('.cart');
    const tongTien = document.querySelector('.total');
    if (sach === null) return;
    const i = 1;
    sach.innerHTML = sp.map((sp1) => `<tr>
                        
                        <td></td> 
						<td>${sp1.name['ten']}</td>

						<td class="text-right">${sp1.price}</td>
                        <td >
                         <div class="w3-show-inline-block">
                             <div class="w3-bar">
							<button type="button"class="w3-btn w3-teal"
								onClick="cartLS.quantity('${sp1.id}',1)">+</button>
						
                                <div  class="w3-btn w3-border">${sp1.quantity}</div>
						
							<button type="button" class="w3-btn w3-teal"
								onClick="decV('${sp1.id}')">-</button>
                                </div>
						 </div>
                        </td>
						<td>${sp1.price * sp1.quantity}</td>
						<td><Button class="btn btn-primary" onClick="" style="margin-right:10px;">Xem</Button> <Button class="btn btn-danger" onClick="cartLS.remove(${sp1.id})">Xóa</Button></td>
					</tr>`
    ).join("");

    tongTien.innerHTML = cartLS.total();
    cartLS.onChange(renderHang);
}

renderHang(cartLS.list());
function chuyenTrang() {
    window.location = '/giohang';
}

function decV(id) {
    var s = cartLS.get(id).quantity;
    if (s > 1) cartLS.quantity(id, -1);
}

function themHang() {
    console.log(cartLS.list())


    $.ajax({
        type: "POST",
        url: "/giohang",
        contentType: 'application/json',
        data: JSON.stringify({ donHang: cartLS.list(), tongTien: cartLS.total() }),
        success: function (res) {

            if (res.status === 200) {
                alert(res.message);
                cartLS.destroy();
            }

        },
        error: function (result) {
            alert('error');
        }
    });

}
function themSP(sach) {
    $.ajax({
        type: "GET",
        url: "/giohang",
        success: function (res) {

            if (res.code === 404) {
                alert('Vui Lòng đăng nhập để mua hàng');
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

