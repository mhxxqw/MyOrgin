<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head >

    <meta charset="UTF-8">
    <title>生活</title>
    <script src="js/common.js" ></script>
    <link rel="stylesheet" href="/css/life/style.css">
</head>
<body>
<div id="wrap">
    <a href="#" class="hb">
        <div class="c">
            <img src="images/1.jpg" alt="">
            <div class="txt">
                <h1>Title here</h1>
                <p>Some longer text here thats wide enough to span on several lines.</p>
            </div>
        </div>
    </a>
    <div class="fullBg">
        <img src="images/1.jpg" alt="">
    </div>
    <a href="#" class="hb">
        <div class="c">
            <img src="images/2.jpg" alt="">
            <div class="txt">
                <h1>Title here</h1>
                <p>Some longer text here thats wide enough to span on several lines.</p>
            </div>
        </div>
    </a>
    <div class="fullBg">
        <img src="images/2.jpg" alt="">
    </div>
    <a href="#" class="hb">
        <div class="c">
            <img src="images/3.jpg" alt="">
            <div class="txt">
                <h1>Title here</h1>
                <p>Some longer text here thats wide enough to span on several lines.</p>
            </div>
        </div>
    </a>
    <div class="fullBg">
        <img src="images/3.jpg" alt="">
    </div>
    <a href="#" class="hb">
        <div class="c">
            <img src="images/4.jpg" alt="">
            <div class="txt">
                <h1>Title here</h1>
                <p>Some longer text here thats wide enough to span on several lines.</p>
            </div>
        </div>
    </a>
    <div class="fullBg">
        <img src="images/4.jpg" alt="">
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        var docWidth = $('body').width(),
            $wrap = $('#wrap'),
            $images = $('#wrap .hb'),
            slidesWidth = $wrap.width();

        $(window).on('resize', function(){
            docWidth = $('body').width();
            slidesWidth = $wrap.width();
        })

        $(document).mousemove(function(e) {
            var mouseX = e.pageX,
                offset = mouseX / docWidth * slidesWidth - mouseX / 2;

            $images.css({
                '-webkit-transform': 'translate3d(' + -offset + 'px,0,0)',
                'transform': 'translate3d(' + -offset + 'px,0,0)'
            });
        });
    })
</script>
</body>
</html>
</html>
