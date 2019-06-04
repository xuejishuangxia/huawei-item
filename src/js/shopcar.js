$(function () {
    var shop = cookie.get('shop');
    console.log(shop)
    if (shop) {
        shop = JSON.parse(shop);
        var idList = shop.map(elm => elm.id).join();
        $.ajax({
            type: "get",
            url: "../lib/shopcar.php",
            data: {
                "idList": idList
            },
            dataType: "json",
            success: function (response) {
                var template = "";
                response.forEach(function (elm) {
                    var arr = shop.filter((val,i)=>{
                        return val.id === elm.id
                    })
                    template = `
                    <div class="wrap-car">
                    <div class="chose-goods">
                        <input type="checkbox" id="i-${elm.id}">
                    </div>
                    <div class="c-content">
                        <a href="#" class="c-pic">
                            <img src="${elm.pic}" alt="">
                        </a>
                        <ul>
                            <li>
                                <a href="#">
                                    ${elm.name}
                                </a>
                            </li>
                            <li>
                                <span>¥&nbsp${elm.price}</span>
                            </li>
                            <li>
                                <div class="count">
                                    <input type="number" class="num" value="${arr[0].num}" min="1" max="${elm.num}">
                                </div>
                            </li>
                            <li>
                                ¥&nbsp${(arr[0].num*elm.price).toFixed(2)}
                            </li>
                            <li>
                                <a href="#">删除</a>
                            </li>
                        </ul>
                    </div>
                </div>
                    `
                    $('#shop-car').append(template);
                })
            }
        });
    }
})