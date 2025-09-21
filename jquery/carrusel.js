$(document).ready(function () {



    let $carr = $(".carrusel").flickity(opti)

    $(".rece").each(function (i) {
        $(this).css("animation-delay", (i / 6) + "s")
    })

});

