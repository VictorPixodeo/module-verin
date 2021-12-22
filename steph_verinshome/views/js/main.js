$(document).on('ready', function() {
    $('.form-calculateur select').each(function(){
        var $this = $(this), numberOfOptions = $(this).children('option').length;

        $this.addClass('select-hidden');
        $this.wrap('<div class="select"></div>');
        $this.after('<div class="select-styled"></div>');

        var $styledSelect = $this.next('div.select-styled');
        $styledSelect.text($this.children('option').eq(0).text());

        var $list = $('<ul />', {
            'class': 'select-options'
        }).insertAfter($styledSelect);

        for (var i = 0; i < numberOfOptions; i++) {
            $('<li />', {
                text: $this.children('option').eq(i).text(),
                val: $this.children('option').eq(i).val()
            }).appendTo($list);
        }

        var $listItems = $list.children('li');

        $styledSelect.click(function(e) {
            e.stopPropagation();
            $('div.select-styled.active').not(this).each(function(){
                $(this).removeClass('active').next('ul.select-options').hide();
            });
            $(this).toggleClass('active').next('ul.select-options').toggle();
        });

        $listItems.click(function(e) {
            e.stopPropagation();
            $styledSelect.text($(this).text()).removeClass('active');
            $this.val($(this).attr('val'));
            $list.hide();
            $('.form-calculateur .select-options li').removeClass('active');
            $(this).addClass('active');
        });

        $(document).click(function() {
            $styledSelect.removeClass('active');
            $list.hide();
        });

    });

    $( "body" ).on( "click", ".choise-content.current .thumbnail-choise", function() {
        var data_id = $(this).attr('data-tab');
        $(this).closest('.choise-content.current').find('.thumbnail-choise').removeClass('current');
        $(this).closest('.choise-content.current').find('.thumbnail-show').removeClass('current');
        $(this).addClass('current');
        $("#"+data_id).addClass('current');
    })

    $('.box-tab li').click(function(e){
        e.preventDefault();
        var data_id = $(this).attr('data-tab');

        $('.box-tab li').removeClass('current');
        $('.choise-content').removeClass('current');

        $(this).addClass('current');
        $("#"+data_id).addClass('current');
    })



});

$( ".input-poppup input" ).click(function() {
    $('.input-poppup').find('span').css('color', '#000000');
    $(this).closest('.input-poppup').find('span').css('color', '#FE7F00');
});