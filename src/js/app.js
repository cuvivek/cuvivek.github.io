/* Modernized Particle & Scroll Initialization */
document.addEventListener("DOMContentLoaded", function () {
  if (typeof SweetScroll !== 'undefined') {
    new SweetScroll({
      trigger: "[data-scroll]",
      duration: 800,
      easing: "easeInOutQuart"
    });
  }

  if (typeof particlesJS !== 'undefined') {
    particlesJS('particles-js', {
      "particles": {
        "number": {
          "value": 45,
          "density": {
            "enable": true,
            "value_area": 900
          }
        },
        "color": {
          "value": ["#38bdf8", "#818cf8", "#60a5fa", "#ffffff"]
        },
        "shape": {
          "type": "circle",
          "stroke": {
            "width": 0,
            "color": "#000000"
          }
        },
        "opacity": {
          "value": 0.35,
          "random": true,
          "anim": {
            "enable": true,
            "speed": 0.8,
            "opacity_min": 0.15,
            "sync": false
          }
        },
        "size": {
          "value": 3,
          "random": true,
          "anim": {
            "enable": false
          }
        },
        "line_linked": {
          "enable": true,
          "distance": 140,
          "color": "#38bdf8",
          "opacity": 0.2,
          "width": 1
        },
        "move": {
          "enable": true,
          "speed": 1.6,
          "direction": "none",
          "random": true,
          "straight": false,
          "out_mode": "out",
          "bounce": false
        }
      },
      "interactivity": {
        "detect_on": "canvas",
        "events": {
          "onhover": {
            "enable": true,
            "mode": "grab"
          },
          "onclick": {
            "enable": true,
            "mode": "push"
          },
          "resize": true
        },
        "modes": {
          "grab": {
            "distance": 180,
            "line_linked": {
              "opacity": 0.45
            }
          },
          "push": {
            "particles_nb": 3
          }
        }
      },
      "retina_detect": true
    });
  }
}, false);
