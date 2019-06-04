$(function () {
    $.ajax({
        type: "get",
        url: "../lib/index.php",
        dataType: "json",
        success: function (response) {
            var Dataloading = $('#dataloading');
            var template = '';
            response.forEach(function (elm, i) {
                template = `
                <li class="other-li">
                    <a href="detail.html?id=${elm.id}">
                        <img src="${elm.pic}" alt="">
                        <p class="p-name">${elm.title}</p>
                        <p class="p-discount">${elm.discount}</p>
                        <p class="p-price"><span>¥</span>${elm.price}</p>
                    </a>
                </li>
                `;
                Dataloading.append(template);
            })
        }
    });

})