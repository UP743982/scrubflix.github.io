
jQuery('document').ready(function ($) {
    $('.gallery-filters li').on('click', function () {
        $('.gallery-filters li').removeClass('active');
        $(this).addClass('active');
        filter = $(this).attr('gallery-filter');

        $('.gallery-img-holder').each(function () {
            if (filter == 'all') {
                $(this).fadeIn();
            } else {
                $(this).hide();
                if ($(this).attr('filter-category') == filter) {
                    $(this).fadeIn();
                }
            }
        });
    });
});



(function () {
    var $imgs = $('.row gallery-images img');
    var $search = $('#filter-search');
    var cache = [];

    $imgs.each(function () {
        cache.push({
            element: this,
            text: this.alt.trim().toLowerCase()
        })
    })

    function filter() {
        var query = this.value.trim().toLowerCase();
        cache.forEach(function (img) {
            var index = 0;
            if (query) {
                index = img.text.indexOf(query);
            }
            img.element.style.display = index === -1 ? 'none' : '';
        })
    }
    if ('oninput' in $search[0]) {
        $search.on('input', filter);
    } else {
        $search.on('keyup', filter);
    }
}())