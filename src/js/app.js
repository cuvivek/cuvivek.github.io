/* Modernized Particle, Theme & Scroll Initialization */
document.addEventListener("DOMContentLoaded", function () {

  // Theme Toggle Logic
  var themeToggleBtn = document.getElementById("theme-toggle");
  var themeIcon = document.getElementById("theme-icon");
  var themeColorMeta = document.getElementById("theme-color-meta");

  function updateThemeUI(theme) {
    if (!themeIcon) return;
    if (theme === "light") {
      themeIcon.className = "fa fa-moon-o";
      themeToggleBtn.setAttribute("title", "Switch to Dark Mode");
      if (themeColorMeta) themeColorMeta.setAttribute("content", "#f8fafc");
    } else {
      themeIcon.className = "fa fa-sun-o";
      themeToggleBtn.setAttribute("title", "Switch to Light Mode");
      if (themeColorMeta) themeColorMeta.setAttribute("content", "#0b0f19");
    }
  }

  // Set initial icon based on current document theme
  var currentTheme = document.documentElement.getAttribute("data-theme") || "dark";
  updateThemeUI(currentTheme);

  if (themeToggleBtn) {
    themeToggleBtn.addEventListener("click", function() {
      var activeTheme = document.documentElement.getAttribute("data-theme") || "dark";
      var nextTheme = activeTheme === "light" ? "dark" : "light";

      document.documentElement.setAttribute("data-theme", nextTheme);
      try {
        localStorage.setItem("portfolio-theme", nextTheme);
      } catch (e) {}

      updateThemeUI(nextTheme);

      // Re-initialize particles with theme-appropriate colors
      initParticles(nextTheme);
    });
  }

  // Smooth Scroll
  if (typeof SweetScroll !== 'undefined') {
    new SweetScroll({
      trigger: "[data-scroll]",
      duration: 800,
      easing: "easeInOutQuart"
    });
  }

  // Particles JS Initialization
  function initParticles(theme) {
    if (typeof particlesJS === 'undefined') return;

    var particleColors = theme === 'light'
      ? ["#0284c7", "#3b82f6", "#6366f1", "#94a3b8"]
      : ["#38bdf8", "#818cf8", "#60a5fa", "#ffffff"];

    var lineColor = theme === 'light' ? "#0284c7" : "#38bdf8";

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
          "value": particleColors
        },
        "shape": {
          "type": "circle",
          "stroke": {
            "width": 0,
            "color": "#000000"
          }
        },
        "opacity": {
          "value": theme === 'light' ? 0.45 : 0.35,
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
          "color": lineColor,
          "opacity": theme === 'light' ? 0.25 : 0.2,
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

  initParticles(currentTheme);

}, false);
