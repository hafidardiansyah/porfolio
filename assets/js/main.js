/*  MIXITUP FILTER Project  */
let mixer = mixitup(".project-container", {
  selectors: {
    target: ".project-content",
  },
  animation: {
    duration: 400,
  },
});

/* LINK ACTIVE PROJECT */
const linkProject = document.querySelectorAll(".project-item");

function activeProject() {
  if (linkProject) {
    linkProject.forEach((l) => l.classList.remove("active-project"));
    this.classList.add("active-project");
  }
}
linkProject.forEach((l) => l.addEventListener("click", activeProject));

/* GASP */

gsap.from(".home-picture", { opacity: 0, duration: 2, delay: 0.5, x: 60 });
gsap.from(".home-data", { opacity: 0, duration: 2, delay: 0.8, y: 25 });
gsap.from(
  ".home-name, .home-job, .home-description, .home-button-cv, .home-button-email",
  { opacity: 0, duration: 2, delay: 0.1, y: 25, ease: "expo.out", stagger: 0.2 }
);
gsap.from(".home-social a", {
  opacity: 0,
  duration: 2,
  delay: 2.5,
  y: 25,
  ease: "expo.out",
  stagger: 0.2,
});

// * PARALLAX *
document.addEventListener("mousemove", parallax);
function parallax(e) {
  this.querySelectorAll("#image").forEach((layer) => {
    const x = (window.innerWidth - e.pageX * 2) / 100;
    const y = (window.innerWidth - e.pageY * 2) / 100;

    layer.style.transform = `translateX(${x}px) translateY(${y}px)`;
  });
}
