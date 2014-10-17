


$(document).ready(function() {
    $('#project1').fadeTo('slow', 0.6);
    $('.detailsContainer').hide().fadeIn('slow');
    $("p[id='project2']").hide();
    $("p[id='project3']").hide();
    $("p[id='project4']").hide();
    $('#hover').hide();
    $('.arrowLeft').on({
        'mouseover' : function() {
            $(this).attr('src', '/assets/arrowLeft_hover.jpg');
            var leftPos = $('.scroll').scrollLeft();
            $(".scroll").animate({scrollLeft: leftPos - 400}, 1000);
        },
        'mouseout' : function() {
            $(this).attr('src', '/assets/arrowLeft.jpg');
        }
    });
    $('.arrowRight').on({
        'mouseover' : function() {
            $(this).attr('src', '/assets/arrowRight_hover.jpg');
            var leftPos = $('.scroll').scrollLeft();
            $(".scroll").animate({scrollLeft: leftPos + 400}, 1000);
        },
        'mouseout' : function() {
            $(this).attr('src', '/assets/arrowRight.jpg');
        }
    });
    $('.sample').on({
        'mouseover' : function() {
            $('.sample').stop().fadeTo('slow', 1);
            $("p").stop().hide();
            $(this).stop().fadeTo('fast', 0.6);
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