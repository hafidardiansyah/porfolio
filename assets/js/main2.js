/*  MIXITUP FILTER Project  */ 
let mixer = mixitup('.project-container', {
    selectors: {
        target: '.project-content'
    },
    animation: {
        duration: 400
    }
})

/* LINK ACTIVE PROJECT */ 
const linkProject = document.querySelectorAll('.project-item');

function activeProject(){
    if(linkProject){
        linkProject.forEach(l => l.classList.remove('active-project'))
        this.classList.add('active-project')
    }
}
linkProject.forEach(l => l.addEventListener('click', activeProject))


/* GASP */ 

gsap.from('.home-picture', {opacity: 0, duration: 2, delay: .5, x:60})
gsap.from('.home-data', {opacity: 0, duration: 2, delay: .8, y:25})
gsap.from('.home-name, .home-job, .home-description, .home-button-cv, .home-button-email',  {opacity: 0, duration: 2, delay: .1, y:25, ease:'expo.out', stagger:.2})
gsap.from('.home-icon',  {opacity: 0, duration: 2, delay: 2.5, y:25, ease:'expo.out', stagger:.2})

