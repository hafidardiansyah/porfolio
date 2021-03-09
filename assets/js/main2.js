/*  MIXITUP FILTER Project  */
let mixer = mixitup(".container", {
  selectors: {
    target: ".content",
  },
  animation: {
    duration: 400,
  },
});

/* LINK ACTIVE PROJECT */
const linkProject = document.querySelectorAll(".item");

function activeProject() {
  if (linkProject) {
    linkProject.forEach((l) => l.classList.remove("active"));
    this.classList.add("active");
  }
}
linkProject.forEach((l) => l.addEventListener("click", activeProject));

/* GASP */

gsap.from(".about-picture", { opacity: 0, duration: 2, delay: 0.5, x: 60 });
gsap.from(".about-data", { opacity: 0, duration: 2, delay: 0.8, y: 25 });
gsap.from(
  ".about-name, .about-job, .about-description, .button-cv, .button-email",
  { opacity: 0, duration: 2, delay: 0.1, y: 25, ease: "expo.out", stagger: 0.2 }
);
gsap.from(".about-link a", {
  opacity: 0,
  duration: 2,
  delay: 2.5,
  y: 25,
  ease: "expo.out",
  stagger: 0.2,
});
