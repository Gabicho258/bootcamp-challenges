
const music = new Audio("stay.mp3");

const playMusic = () => {
    //Para que haga un efecto de rotación, fata mejorar img 
    const img = document.querySelector(".img")
    if (music.paused) {
        music.play()
        img.classList.add("turnRound")
    } else {
        music.pause()  
        img.classList.remove("turnRound")
    }
}