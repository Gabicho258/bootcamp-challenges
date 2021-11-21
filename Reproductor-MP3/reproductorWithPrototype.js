

const Reproductor = function() {
    this.music = new Audio("stay.mp3");
};


Reproductor.prototype.playMusic = function() {
    this.music.paused?this.music.play():this.music.pause();
} 

const reproductor = new Reproductor();
