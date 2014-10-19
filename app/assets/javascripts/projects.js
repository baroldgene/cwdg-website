$(document).ready(function() {
    $('#project1').fadeTo('slow', 0.6);
    $('.detailsContainer').hide().fadeIn('slow');
    $("p[id='project2']").hide();
    $("p[id='project3']").hide();
    $("p[id='project4']").hide();
    $('#hover').hide();
    $(".triggerL, .arrowLeft").on({
        'mouseover' : function() {
            $('.arrowLeft').attr('src', '/assets/arrowLeft_hover.jpg');
            var leftPos = $('.scroll').scrollLeft();
            $(".scroll").animate({scrollLeft: leftPos - 500}, 900);
        },
        'mouseout' : function() {
            $('.arrowLeft').attr('src', '/assets/arrowLeft.jpg');
        }
    });
    $(".triggerR, .arrowRight").on({
        'mouseover' : function() {
            $('.arrowRight').attr('src', '/assets/arrowRight_hover.jpg');
            var leftPos = $('.scroll').scrollLeft();
            $(".scroll").animate({scrollLeft: leftPos + 500}, 900);
        },
        'mouseout' : function() {
            $('.arrowRight').attr('src', '/assets/arrowRight.jpg');
        }
    });
    $('.sample').on({
        'mouseover' : function() {
            $('.sample').stop().fadeTo('slow', 1);
            $("p").stop().hide();
            $(this).stop().fadeTo('slow', 0.6);
            var height = $(this).height();
            $(this).animate(height + 100);
            var selection = $(this).attr("id");
            $("p[id=" + selection + "]")
                .fadeIn('slow');
        },
        'mouseout' : function() {


        }
    });
});
