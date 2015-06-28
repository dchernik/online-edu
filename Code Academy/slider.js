$(document).ready(main);

function main () {
    $('.dropdown-toggle').click(function () {
       $('.dropdown-menu').toggle();
    });
    
    $('.arrow-next').click(function () {
        var currentSlide = $('.active-slide'),
            nextSlide = currentSlide.next().length === 0 ? $('.slide').first() : currentSlide.next(),
            currentDot = $('.active-dot'),
            nextDot = currentDot.next().length === 0 ? $('.dot').first() : currentDot.next();
        currentSlide.fadeOut(600).removeClass('active-slide');
        nextSlide.fadeIn(600).addClass('active-slide');
        currentDot.removeClass('active-dot');
        nextDot.addClass('active-dot');
    });
    
    $('.arrow-prev').click(function () {
        var currentSlide = $('.active-slide'),
            prevSlide = currentSlide.prev().length === 0 ? $('.slide').last() : currentSlide.prev(),
            currentDot = $('.active-dot'),
            prevDot = currentDot.prev().length === 0 ? $('.dot').last() : currentDot.prev()
        currentSlide.fadeOut(600).removeClass('active-slide');
        prevSlide.fadeIn(600).addClass('active-slide');
        currentDot.removeClass('active-dot');
        prevDot.addClass('active-dot');
    });
}