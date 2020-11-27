
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

