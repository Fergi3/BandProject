/*!
* Start Bootstrap - Stylish Portfolio v6.0.5 (https://startbootstrap.com/theme/stylish-portfolio)
* Copyright 2013-2022 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-stylish-portfolio/blob/master/LICENSE)
*/
window.addEventListener('DOMContentLoaded', event => {

    const sidebarWrapper = document.getElementById('sidebar-wrapper');
    const menuToggle = document.getElementById('menu-toggle');
    let scrollToTopVisible = false;

    const syncMenuState = () => {
        const isOpen = sidebarWrapper.classList.contains('show');
        menuToggle.classList.toggle('is-open', isOpen);
        menuToggle.setAttribute('aria-expanded', isOpen ? 'true' : 'false');
    };

    // Hamburger menu click functionality
    menuToggle.addEventListener('click', (e) => {
        e.stopPropagation();
        sidebarWrapper.classList.toggle('show');
        syncMenuState();
    });

    // Close drawer when a nav link is clicked
    const navLinks = document.querySelectorAll('#sidebar-wrapper .nav-link');
    navLinks.forEach(link => {
        link.addEventListener('click', () => {
            sidebarWrapper.classList.remove('show');
            syncMenuState();
        });
    });

    // Close drawer when clicking outside of it
    document.addEventListener('click', (e) => {
        if (!sidebarWrapper.contains(e.target) && !menuToggle.contains(e.target)) {
            sidebarWrapper.classList.remove('show');
            syncMenuState();
        }
    });

    syncMenuState();

    // Scroll to top button appear
    document.addEventListener('scroll', () => {
        const scrollToTop = document.body.querySelector('.scroll-to-top');
        if (document.documentElement.scrollTop > 100) {
            if (!scrollToTopVisible) {
                fadeIn(scrollToTop);
                scrollToTopVisible = true;
            }
        } else {
            if (scrollToTopVisible) {
                fadeOut(scrollToTop);
                scrollToTopVisible = false;
            }
        }
    })
})

function fadeOut(el) {
    el.style.opacity = 1;
    (function fade() {
        if ((el.style.opacity -= .1) < 0) {
            el.style.display = "none";
        } else {
            requestAnimationFrame(fade);
        }
    })();
};

function fadeIn(el, display) {
    el.style.opacity = 0;
    el.style.display = display || "block";
    (function fade() {
        var val = parseFloat(el.style.opacity);
        if (!((val += .1) > 1)) {
            el.style.opacity = val;
            requestAnimationFrame(fade);
        }
    })();
};
