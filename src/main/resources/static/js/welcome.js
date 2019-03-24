/*
 * fitty v2.1.0 - Snugly resizes text to fit its parent container
 * Copyright (c) 2017 undefined - https://github.com/rikschennink/fitty
 */
!function(e,t){if("function"==typeof define&&define.amd)define(["module","exports"],t);else if("undefined"!=typeof exports)t(module,exports);else{var n={exports:{}};t(n,n.exports),e.fitty=n.exports}}(this,function(e,t){"use strict";function n(e){var t=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};if("string"==typeof e&&"querySelectorAll"in document)return m(e,t);var n={minSize:t.minSize||16,maxSize:t.maxSize||512,multiLine:t.multiLine!==!1,observeMutations:t.observeMutations!==!1&&(t.observeMutations||p),target:e};return l(n),n.observeMutations&&(n.observer=new MutationObserver(function(){c(n)}),n.observer.observe(e,n.observeMutations===!0?d:n.observeMutations)),{element:e,fit:function(){c(n)},unsubscribe:function(){f(n)}}}Object.defineProperty(t,"__esModule",{value:!0});var i=[],r=null,o="requestAnimationFrame"in window?function(){cancelAnimationFrame(r),r=requestAnimationFrame(function(){a(i.filter(function(e){return e.dirty}))})}:function(){},u=function(e){var t=!1,n=window.getComputedStyle(e.target,null);return e.currentFontSize=parseInt(n.getPropertyValue("font-size"),10),e.display=n.getPropertyValue("display"),/inline-/.test(e.display)||(t=!0,e.display="inline-block"),e.whiteSpace=n.getPropertyValue("white-space"),"nowrap"!==e.whiteSpace&&(t=!0,e.whiteSpace="nowrap"),e.styleComputed=!0,t},a=function(e){e.filter(function(e){return!e.styleComputed}).forEach(function(e){e.preStyle=u(e)}),e.filter(function(e){return e.preStyle}).forEach(s),e.forEach(function(e){e.availableWidth=e.target.parentNode.offsetWidth,e.currentWidth=e.target.scrollWidth,e.previousFontSize=e.currentFontSize,e.currentFontSize=Math.min(Math.max(e.minSize,e.availableWidth/e.currentWidth*e.previousFontSize),e.maxSize),e.whiteSpace=e.multiLine&&e.currentFontSize===e.minSize?"normal":"nowrap"}),e.forEach(function(e){s(e),e.dirty=!1,e.target.dispatchEvent(new CustomEvent("fit",{detail:{oldValue:e.previousFontSize,newValue:e.currentFontSize,scaleFactor:e.currentFontSize/e.previousFontSize}}))})},s=function(e){e.target.style.cssText="white-space:"+e.whiteSpace+";display:"+e.display+";font-size:"+e.currentFontSize+"px"},c=function(e){e.dirty=!0,o()},l=function(e){e.newbie=!0,i.push(e),c(e)},f=function(e){i=i.filter(function(t){return t.target!==e.target}),e.observeMutations&&e.observer.disconnect(),e.target.style.removeProperty("font-size")},d={subtree:!0,childList:!0,characterData:!0},p="MutationObserver"in window,v=function(e){return[].slice.call(e)},m=function(e,t){return v(document.querySelectorAll(e)).map(function(e){return n(e,t)})},y=function(){i.forEach(function(e){e.dirty=!0}),o()},h=null,S=function(){clearTimeout(h),h=setTimeout(y,n.observeWindowDelay)},b=["resize","orientationchange"];Object.defineProperty(n,"observeWindow",{set:function(e){var t=(e?"add":"remove")+"EventListener";b.forEach(function(e){window[t](e,S)})}}),n.observeWindow=!0,n.observeWindowDelay=100,n.fitAll=y,t["default"]=n,e.exports=t["default"]});




(function(){
    var counter = document.querySelector('.counter');
    var diner = document.querySelector('h1');
    var menu = ['*', '@', '%', '￥', '#', '^_^'];
    var noms = ['nom', 'nom!', 'nom!!', 'nommm', 'nommy'];
    var finished = 0;

    // animation to play when finished dining
    function jelly(e) {
        diner.removeEventListener('fit', jelly);
        diner.animate(
            [
                { transform: 'scale(' + 1 / e.detail.scaleFactor + ')' },
                { transform: 'scale(1.1)' },
                { transform: 'scale(.9)' },
                { transform: 'scale(1.05)' },
                { transform: 'scale(.98)' },
                { transform: 'scale(1)' }
            ],
            {
                duration:500
            }
        );
    }

    // eat animation
    function nom(index) {

        var nommer = document.getElementById('nommer-' + index);
        var rotation = -20 + (Math.random() * 40);
        var scale = .75 + (Math.random() * .5);

        nommer.animate(
            [
                { opacity:0, transform: 'scale(' + .25 * scale + ') rotateZ(' + rotation + 'deg) translateY(0) ' },
                { opacity:1, transform: 'scale(' + scale + ') rotateZ(' + rotation + 'deg) translateY(-.5em) ' }
            ],
            {
                duration:250
            }
        );

        diner.animate(
            [
                { transform: 'scaleY(1)' },
                { transform: 'scaleY(' + (.7 + (Math.random() * .2)) + ')' },
                { transform: 'scaleY(1)' }
            ],
            {
                duration:100
            }
        );
    }

    // only when animation api is supported
    if ('animate' in diner) {
        diner.addEventListener('fit', jelly);
    }

    // create food items
    var dishes = menu
        .concat(menu) // duplicate icons
        .sort(function() { return .5 - Math.random(); })
        .concat(['??']) // unfortunately there's no fly emoji
        .map(function(menuItem, i) {

            var offset = 33.33 + (Math.random() * 33.33);

            var dish = document.createElement('div');
            dish.textContent = menuItem;
            dish.setAttribute('aria-hidden', 'true');
            dish.setAttribute('data-nommer', i);
            dish.className = 'dish';
            dish.style.cssText = 'left:' + offset + '%; transition-delay: ' + ((i * 200) + Math.random() * 100) + 'ms';

            var nommer = document.createElement('div');
            nommer.id = 'nommer-' + i;
            nommer.textContent = noms[Math.floor(Math.random() * noms.length)];
            nommer.setAttribute('aria-hidden', 'true');
            nommer.className = 'nommer';
            nommer.style.cssText = 'left:' + offset + '%; opacity:0;';

            counter.appendChild(dish);
            counter.appendChild(nommer);

            return dish;
        });

    // animate into view
    setTimeout(function() {
        requestAnimationFrame(function() {
            dishes.forEach(function (dish) {
                dish.classList.add('drop');
                dish.addEventListener('transitionend', burb);
            })
        });
    }, 500);

    // burb after eating dish
    function burb(e) {
        e.target.removeEventListener('transitionend', burb);
        e.target.style.opacity = 0;

        finished++;
        if (finished === dishes.length) {
            full();
        }
        else if ('animate' in diner) {
            nom(e.target.getAttribute('data-nommer'));
        }
    }

    // so full!
    function full() {
        fitty(diner, {
            minSize:64
        });
    }
}());