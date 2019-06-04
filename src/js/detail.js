$(function () {
    var id = location.search.split('=')[1];
    $.ajax({
        type: "get",
        url: "../lib/detail.php",
        data: {
            id: id
        },
        dataType: "json",
        success: function (response) {
            // console.log(res)
            $(".wrap-box>img").attr("src", response.pic);
            $(".big>img").attr("src", response.pic);
            $(".l-img1>img").attr("src", response.pic);
            $(".d-title>h1").html(response.name);
            $(".s-2>span").html(response.price);
            $(".car-1>input").attr("max", response.num);


            $('.button1').on('click', function () {
                addCar(response.id, response.price, $('#num').val());
            });
        }
    });

    
    function addCar(id, price, num) {
        var shop = cookie.get('shop');
        var product = {
            "id": id,
            "price": price,
            "num": num
        };
        if (shop) {
            shop = JSON.parse(shop);
            if (shop.some(elm => elm.id == id)) {
                shop.forEach(function (elm, i) {
                    elm.id == id ? elm.num = num : null;
                })
            } else {
                shop.push(product);
            }
            cookie.set('shop', JSON.stringify(shop), 1);
        } else {
            shop = [];
            shop.push(product);
            cookie.set('shop', JSON.stringify(shop), 1);
        }
    };

        var scale = $('.to-big'),
            small = $('.wrap-box'),
            movebox = $('.movebox'),
            big = $('.big'),
            bigpic = $('.bigpic');

        small.on('mouseover', function () {
            movebox.removeClass('hide').addClass('show');
            big.removeClass('hide').addClass('show');


            movebox.css({
                'width': small.width() * big.width() / bigpic.width() + 'px',
                'height': small.height() * big.height() / bigpic.height() + 'px'
            });

            small.on('mousemove', function (ev) {
                ev = ev || event;

                var left = ev.clientX - scale.offset().left - (movebox.width() / 2);
                var top = ev.clientY - scale.offset().top - (movebox.height() / 2);

                var prop = bigpic.width() / small.height();

                if (left < 0) {
                    left = 0;
                } else if (left > small.width() - movebox.width()) {
                    left = small.width() - movebox.width() - 2;
                }

                if (top < 0) {
                    top = 0;
                } else if (top > small.height() - movebox.height()) {
                    top = small.height() - movebox.height() - 2;
                }

                movebox.css({
                    'left': left + 'px',
                    'top': top + 'px'
                })

                bigpic.css({
                    'left': -left * prop + "px",
                    'top': -top * prop + "px"
                })
            });


        });

        small.on('mouseout', function () {
            movebox.removeClass('show').addClass('hide');
            big.removeClass('show').addClass('hide');
        });

})


