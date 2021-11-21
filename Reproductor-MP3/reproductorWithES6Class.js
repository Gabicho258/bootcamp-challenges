
class Reproductor {
    constructor() {
        this.music = new Audio("stay.mp3");
    }
    playMusic() {
        this.music.paused?this.music.play():this.music.pause();
    }
}

const reproductor = new Reproductor();
