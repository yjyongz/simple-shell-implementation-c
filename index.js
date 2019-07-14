
document.addEventListener('DOMContentLoaded', function() {
    var tty = document.getElementsByClassName('tty').item(0);
    var e = tty.firstElementChild;
    while (e) {
        if (e.tagName.toLowerCase() === 'p') {
            var span = document.createElement('span');
            span.classList.add('cursor');
            e.appendChild(span);
        }
        e = e.nextElementSibling;
    }
    tty.classList.add('show');
}, false);
