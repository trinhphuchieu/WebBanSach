
// CHECK IF REFORM
if (window.history.replaceState) {
    window.history.replaceState(null, null, window.location.href);
}
console.log('script cua main.js')
$(function () {
    $('.khoisanpham').slick({
        dots: false,
        infinite: false,
        speed: 300,
        slidesToShow: 5,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1400,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    infinite: true,
                    dots: true
                }
            },
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });

    //hieu ung header va nut backtotop
    $("#backtotop").click(function () {
        $("html, body").animate({ scrollTop: 0 }, 400);
    });

    $(window).scroll(function () {
        if ($("body,html").scrollTop() > 150) {
            $(".navbar").addClass("fixed-top");
        }
        else {
            $(".navbar").removeClass("fixed-top");
        }
    });

    $(window).scroll(function () {
        if ($("body,html").scrollTop() > 500) {
            $(".nutcuonlen").addClass("hienthi");
        }
        else {
            $(".nutcuonlen").removeClass("hienthi");
        }
    });

    // header form dangnhap dangky
    $(".nutdangnhap").click(function (e) {
        $("ul.tabs .tab-dangnhap").addClass("active");
    });
    $(".nutdangky").click(function (e) {
        $("ul.tabs .tab-dangky").addClass("active");
    });

    $("ul.tabs .tab-dangnhap").click(function (e) {
        $("ul.tabs .tab-dangnhap").addClass("active");
        $("ul.tabs .tab-dangky").removeClass("active");
    });

    $("ul.tabs .tab-dangky").click(function (e) {
        $("ul.tabs .tab-dangky").addClass("active");
        $("ul.tabs .tab-dangnhap").removeClass("active");
    });

    // form dangnhap dangky 
    $(".tab-dangky").click(function (e) {
        $('#formdangnhap').removeClass("fade");
        $('#formdangky').removeClass("fade");
        $('#formdangnhap').modal("hide");
        $('#formdangky').modal("show");
    });
    $(".tab-dangnhap").click(function (e) {
        $('#formdangnhap').removeClass("fade");
        $('#formdangky').removeClass("fade");
        $('#formdangky').modal("hide");
        $('#formdangnhap').modal("show");
    });
    $(".close").click(function (e) {
        $('.modal').addClass("fade");
        $("ul.tabs .tab-dangnhap").removeClass("active");
        $("ul.tabs .tab-dangky").removeClass("active");
    });

    // thumb-img
    $(".thumb-img.thumb1").addClass('vienvang');
    $('.thumb-img').click(function (e) {
        $('.product-image').attr('src', this.src);
    });

    $('.thumb-img').click(function (e) {
        $('.thumb-img:not(:hover)').removeClass('vienvang');
        $(this).addClass('vienvang');
    });

    //btn-spin
    $(".btn-inc").click(function (e) {
        var strval = $(this).parent().prev().val();
        var val = parseInt(strval) + 1;
        $(this).parent().prev().attr('value', val);
    });
    $(".btn-dec").click(function (e) {
        var strval = $(this).parent().next().val();
        var val = parseInt(strval) - 1;
        if (val < 1) {
            $(this).parent().next().attr('value', 1);
        } else {
            $(this).parent().next().attr('value', val);
        }
    });

    // gui danh gia
    $(".formdanhgia").hide(200);
    $(".vietdanhgia").click(function (e) {
        $(".formdanhgia").toggle(200);
    });




    //rotate chevron
    $('#step1contentid').on('show.bs.collapse', function () {
        $(this).prev().addClass("active");
    })
    $('#step1contentid').on('hide.bs.collapse', function () {
        $(this).prev().removeClass("active");
    })
    $('#step2contentid').on('show.bs.collapse', function () {
        $(this).prev().addClass("active");
    })
    $('#step2contentid').on('hide.bs.collapse', function () {
        $(this).prev().removeClass("active");
    })
    $('#step3contentid').on('show.bs.collapse', function () {
        $(this).prev().addClass("active");
    })
    $('#step3contentid').on('hide.bs.collapse', function () {
        $(this).prev().removeClass("active");
    })

    // nut btn-shopping-without-signup
    $("#step1contentid").collapse('show');
    $(".btn-shopping-without-signup").click(function (e) {
        $("#step1contentid").collapse('hide');
        $("#step2contentid").collapse('show');
    });






    // add to cart 
    let product =
    {
        name: $('.khoithongtin .ten').text(),
        tag: $('.product-image').attr("alt"),
        price: parseFloat($('.gia span.giamoi').text()),
        old_price: parseFloat($('.gia span.giacu').text()),
        inCart: 0
    }

    let carts = document.querySelector('.nutmua');
    if (carts) {
        carts.addEventListener('click', () => {
            // cartNumbers(product);
            // totalCost(product);
        })
    }

    // function onLoadCartNumbers() {
    //     let productNumbers = localStorage.getItem('cartNumbers');
    //     if (productNumbers) {
    //         document.querySelector('.giohang .cart-amount').textContent = productNumbers;
    //     }
    // }

    // function cartNumbers(product) {

    //     let productNumbers = localStorage.getItem('cartNumbers');
    //     productNumbers = parseInt(productNumbers);

    //     if (productNumbers) {
    //         localStorage.setItem('cartNumbers', productNumbers + parseInt($(".soluongsp").val()));
    //         document.querySelector('.giohang .cart-amount').textContent = productNumbers + parseInt($(".soluongsp").val());
    //     } else {
    //         localStorage.setItem('cartNumbers', parseInt($(".soluongsp").val()));
    //         document.querySelector('.giohang .cart-amount').textContent = parseInt($(".soluongsp").val());
    //     }
    //     setItem(product);
    // }

    function setItem(product) {
        let cartItems = localStorage.getItem('productsInCart');
        cartItems = JSON.parse(cartItems);

        if (cartItems != null) {
            if (cartItems[product.tag] == undefined) {
                cartItems = {
                    ...cartItems,
                    [product.tag]: product
                }
            }
            cartItems[product.tag].inCart += parseInt($(".soluongsp").val());
        } else {
            product.inCart = parseInt($(".soluongsp").val());
            cartItems = {
                [product.tag]: product
            }
        }

        localStorage.setItem('productsInCart', JSON.stringify(cartItems));
    }

    function totalCost(product) {
        let cartCost = localStorage.getItem('totalCost');

        if (cartCost != null) {
            cartCost = parseFloat(cartCost);
            localStorage.setItem('totalCost', cartCost + parseInt($(".soluongsp").val()) * product.price);
        } else {
            localStorage.setItem('totalCost', parseInt($(".soluongsp").val()) * product.price);
        }
    }

    // hi???n th??? s???n ph???m

    function displayCart() {
        console.log('hieu dep training', cartLS.list());
        let cartContent = document.querySelector(".cart-content");

        cartContent.innerHTML += `
            <h6 class="header-gio-hang">GI??? H??NG C???A B???N </h6>
            <div class="cart-list-items">
            `

        cartContent.innerHTML += cartLS.list().map(item => `
                    <div class="cart-item d-flex">
                        <a href="/${item.id}" class="img">
                            <img src="/uploads/${item.name.hinh_anh}" class="img-fluid" alt="${item.name.hinh_anh}">
                        </a>


                        <div class="item-caption d-flex w-100">
                            <div class="item-info ml-3">
                                <a href="/${item.id}" class="ten">${item.name.ten_sach}</a>
                                <div class="soluong d-flex">
                                    <div class="input-number input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text btn-spin btn-dec">-</span>
                                        </div>
                                        <input type="text" value="${item.quantity}" class="soluongsp  text-center">
                                        <div class="input-group-append">
                                            <span class="input-group-text btn-spin btn-inc">+</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item-price ml-auto d-flex flex-column align-items-end">
                                <div class="giamoi">${number_format(item.price)} ???</div>                            
                                <span class="remove mt-auto"><i class="far fa-trash-alt"></i></span>
                            </div>
                        </div>
                    </div>
                    <hr>
                `).join("");

        cartContent.innerHTML += `
            </div>

            <div class="row">
                <div class="col-md-3">
                    <a href="index.html" class="btn nutmuathem mb-3">Mua th??m</a>
                </div>
                <div class="col-md-5 offset-md-4">
                    <div class="tonggiatien">
                        
               
                        <div class="group d-flex justify-content-between">
                            <p class="label">Ph?? v???n chuy???n:</p>
                            <p class="phivanchuyen">0 ???</p>
                        </div>

                        <div class="group d-flex justify-content-between align-items-center">
                            <strong class="text-uppercase">T???ng c???ng:</strong>
                            <p class="tongcong">${number_format(cartLS.total())} ???</p>
                        </div>
                        <small class="note d-flex justify-content-end text-muted">
                            (Gi?? ???? bao g???m VAT)
                        </small>
                    </div>
                </div>
            </div>
            `
        cartLS.onChange(displayCart);

    }



    function number_format(number, decimals, dec_point, thousands_sep) {
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

    $(".btn-checkout").click(function (e) {
        localStorage.clear();
        location.reload(true);
        alert("c???m ??n ???? mua h??ng");
    });

    // onLoadCartNumbers();
    displayCart();

    $('.items .row').isotope({
        itemSelector: '.item',
    })

    $('.tag a').click(function (e) {
        var tacgia = $(this).data('tacgia');

        if (tacgia == 'all') {
            $('.items .row').isotope({ filter: '*' })
        } else {
            $('.items .row').isotope({ filter: tacgia });
        }
        return false;
    });

    $('.thay-doi-mk').hide();
    $("#changepass").click(function (e) {
        $('.thay-doi-mk').toggle(200);
    });

});


$("#form-signup").submit(function (e) {

    e.preventDefault();

    var form = $(this);
    $.ajax({
        type: "POST",
        url: "/dangky",
        data: form.serialize(),
        success: function (res) {

            if (res.code === 401) {
                document.getElementById("checkDangKy").innerHTML = res.message;
            }
            if (res.code === 200) {
                window.location.reload();
            }

        },
        error: function (res) {
            console.log(JSON.stringify(res));



        }
    });
});

function soLuongDH(){
    document.getElementById('bietbaonhieuchovua').innerHTML = cartLS.list().length+'';
}
cartLS.onChange(soLuongDH);

document.getElementById('bietbaonhieuchovua').innerHTML = cartLS.list().length+'';

$("#form-signin").validate({
    rules: {
        tai_khoan: {
            required: true,
        },
        mat_khau: {
            required: true,
        }
    },
    messages: {
        mat_khau: {
            required: 'Vui l??ng nh???p m???t kh???u',

        },
        tai_khoan: {
            required: "Vui l??ng nh???p t??i kho???n",
        }
    }
});

$("#form-signin").submit(function (e) {
    e.preventDefault();

    var form = $(this);
    $.ajax({
        type: "POST",
        url: "/dangnhap",
        data: form.serialize(),
        success: function (res) {

            if (res.code === 401) {
                document.getElementById("checkDangNhap").innerHTML = res.message;
            }
            if (res.code === 200) {
                window.location.reload();
            }

        },
        error: function (res) {
            console.log(JSON.stringify(res));



        }
    });



});
function xemDon(donHang) {
    console.log('hieu');
    donHang = JSON.parse(donHang);
    $.ajax({
        type: "GET",
        url: `/khachhang/${donHang.ma_don_hang}`,
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
    var s = document.getElementById('hieudeptrai');
    if (s === null) return;

    s.innerHTML = `<div class="card">
    <div class="card-header">
        <strong>M?? ????n H??ng: </strong><span id="ma-don"></span>
        <span  class="float-right"> <strong>Tr???ng Th??i ????n:</strong> <span id="trang-thai"></span></span>

    </div>
    <div class="card-body">
   
        <div class="row mb-4">
            
            <div class="col">
                <strong style="color: red; margin-left: 300px;">H??A ????N ??I???N T???</strong>
                <br>
                <strong>T??n ng?????i nh???n: </strong><span id="ten"></span>
                <br>
                <strong>S??? ??i???n tho???i: </strong><span id="sdt"></span>
                <br>
                <strong>?????a ch???: </strong><span id="dc"></span>
                <br>
                <strong>Ng??y ?????t: </strong><span id="ngay-dat"></span>
               
            
            </div>

        </div>

        <div class="table-responsive-sm">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th class="center">STT</th>
                        <th class="right">T??n S??ch</th>
                        <th class="center">S??? L?????ng</th>
                        <th class="right">????n Gi??</th>
                        <th class="right">Th??nh Ti???n</th>
                    </tr>
                </thead>
                
                <tbody class='thongtin-donHang'>
                    
                </tbody>
            
                <tfoot>
                    
                </tfoot>
                
            </table>
            <table>
                <tr>
                    <td style="text-align:left; width:600px;">
                    <strong>T???ng Bi??n Lai</strong>
                    </td>
                    <th id="tong-tien" class="right">  
                        </th>
                </tr>
            </table>
           
        </div>
    </div>
</div>`


    var ma_don = document.getElementById('ma-don');
    var ten = document.getElementById('ten');
    var sdt = document.getElementById('sdt');
    var dc = document.getElementById('dc');
    var trang_thai = document.getElementById('trang-thai');
    var ngay_dat = document.getElementById('ngay-dat');
    ngay_dat.innerHTML = chuyenGio(new Date(donHang.ngay_dat));
    ma_don.innerHTML = donHang.ma_don_hang;
    ten.innerHTML = donHang.ten_nn;
    sdt.innerHTML = donHang.sdt;
    dc.innerHTML = donHang.dia_chi;


    trang_thai.innerHTML = donHang.trang_thai_don === 0 ? 'Ch??a Duy???t' : (donHang.trang_thai_don === 1 ? '??ang X??? L??' : '???? Giao');
    var sab = document.getElementsByClassName('thongtin-donHang');
    var tien = document.getElementById('tong-tien');
    tien.innerHTML = number_format(donHang.tong_thanh_toan) + ' VN??';
    var c = 1;
    for (var i in chiTiet) {
        if (!chiTiet.hasOwnProperty(i)) continue;
        console.log(chiTiet[i]);
        sab[0].innerHTML += `<tr>
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
    const a = ['Ch??? nh???t', 'Th??? hai', 'Th??? ba', 'Th??? t??', 'Th??? n??m', 'Th??? s??u', 'Th??? b???y'];
    return `${a[str.getDay()]}, ng??y ${str.getDate()} th??ng ${str.getMonth() + 1} n??m ${str.getFullYear()} L??c ${str.getHours()}:${str.getMinutes()}:${str.getSeconds()} ${str.getHours() <= 12 ? 's??ng' : 'chi???u'}`;
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

function xoaDon(donHang) {
    donHang = JSON.parse(donHang);
    $.ajax({
        type: "DELETE",
        url: `/khachhang/${donHang.ma_don_hang}`,
        success: function (res) {
            if (res.code === 200) {
                alert('X??a ????n Th??nh C??ng');
                window.location.reload();
            }

        },
        error: function (result) {
            alert('error');
        }
    });
}

function themSP(sach) {
    console.log(sach);
    $.ajax({
        type: "GET",
        url: "/giohang",
        success: function (res) {
            
            
            if (res.code === 404) {
                alert('Vui L??ng ????ng nh???p ????? mua h??ng');
                return;
            }
            cartLS.add({ id: sach.ma_sach, name: sach, price: sach.gia_ban });
          


        },
        error: function (result) {
            alert('error');
        }
    });
}
function renderSP(sp) {
    console.log('San pham dinh mua hang', cartLS.list());
    const sach = document.querySelector('.cart1');
    const tongTien = document.querySelector('.total');
    if (sach === null) return;
    const i = 1;

    sach.innerHTML = sp.map((sp1) => `
    <tr>                                
                                        <th scope="row"></th>
                                        <td><img src="/uploads/${sp1.name['hinh_anh']}" alt="" width="100px"></td>
                                        <td style="width:300px;">${sp1.name['ten_sach']}</td>
                                        <td>
                                            <div class="w3-bar">
                                                <button type="button" class="w3-btn w3-teal" onClick="cartLS.quantity(${sp1.id},1)">+</button>
                                        
                                                <div class="w3-btn w3-border">${sp1.quantity}</div>
                                        
                                                <button type="button" class="w3-btn w3-teal" onClick="decV(${sp1.id})">-</button>
                                            </div>
                                        </td>
                                        <td> ${number_format(sp1.price)} VN??</td>
                                        <td>${number_format(sp1.price * sp1.quantity)} VN??</td>
                                        <td><button type="button" class="btn btn-danger" onClick="cartLS.remove(${sp1.id})">X??a</button></td>
  </tr> `).join("");

    tongTien.innerHTML = number_format(cartLS.total()) + ' VN??';
    cartLS.onChange(renderSP);
}



renderSP(cartLS.list());



function renderDatMua(sp) {
    console.log('San pham dat mua hang', cartLS.list());
    const sach = document.querySelector('.cart2');

    const tongTien = document.querySelector('#tong-thanh-toan');
    const tongTien1 = document.querySelector('#tong-thanh-toan-1');
    if (sach === null) return;
    const i = 1;

    sach.innerHTML = sp.map((sp1) => `
    <tr>                                
                                        <th scope="row"></th>
                                        <td><img src="/uploads/${sp1.name['hinh_anh']}" alt="" width="100px"></td>
                                        <td style="width:300px;">${sp1.name['ten_sach']}</td>
                                        <td>
                                            <div class="w3-bar">                     
                                                <div class="w3-btn w3-border">${sp1.quantity}</div>  
                                            </div>
                                        </td>
                                        <td> ${number_format(sp1.price)} VN??</td>
                                        <td>${number_format(sp1.price * sp1.quantity)} VN??</td>
                                        
  </tr> `).join("");

    tongTien.innerHTML = number_format(cartLS.total()) + ' VN??';
    tongTien1.innerHTML = number_format(cartLS.total()) + ' VN??';

}

renderDatMua(cartLS.list());

function decV(id) {
    var s = cartLS.get(id).quantity;
    if (s > 1) cartLS.quantity(id, -1);
}

function themHang() {
    console.log(cartLS.list())
    const name3 = document.getElementById('name3');
    const address = document.getElementById('address');
    const phone = document.getElementById('phone');
    if (name3 === null || address === null || phone === null) {
        alert('Vui L??ng ??i???n ?????y ????? th??ng tin giao h??ng ');
        return;
    }
    $.ajax({
        type: "POST",
        url: "/giohang",
        contentType: 'application/json',
        data: JSON.stringify({ donHang: cartLS.list(), tongTien: cartLS.total(), thongTin: { ten_nn: name3.innerHTML, sdt: parseInt(phone.innerHTML), dia_chi: address.innerHTML } }),
        success: function (kq) {
            return;

        },
        error: function (result) {
            alert('error');
        }
        
    });
    cartLS.destroy();
    window.location.href='/khachhang';
}


$.ajax({
    type: "GET",
    url: "/admin/thaotac/",
    success: function (res) {
        
        if (res.code === 200) {
            window.location.reload();
        }

    },
    error: function (result) {
       
    }
});





$('#clickAlert').click(function () {
            
    $('.alert').addClass("show");
    $('.alert').removeClass("hide");
    $('.alert').addClass("showAlert");
    setTimeout(function () {
        $('.alert').removeClass("show");
        $('.alert').addClass("hide");
    }, 1000);
});
$('.close-btn').click(function () {
    $('.alert').removeClass("show");
    $('.alert').addClass("hide");
});







