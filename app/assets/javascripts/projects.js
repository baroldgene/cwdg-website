


$(document).ready(function() {
    $('#project1').fadeTo('slow', 0.6);
    $('.detailsContainer').hide().fadeIn('slow');
    $("p[id='project2']").hide();
    $("p[id='project3']").hide();
    $("p[id='project4']").hide();
    $('#hover').hide();
<<<<<<< HEAD
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
=======
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
>>>>>>> ec211ec78ee7b6477afa7e10bddb0f54a1c8ff35
        }
    });
    $('.sample').on({
        'mouseover' : function() {
            $('.sample').stop().fadeTo('slow', 1);
            $("p").stop().hide();
<<<<<<< HEAD
            $(this).stop().fadeTo('slow', 0.6);
=======
            $(this).stop().fadeTo('fast', 0.6);
>>>>>>> ec211ec78ee7b6477afa7e10bddb0f54a1c8ff35
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