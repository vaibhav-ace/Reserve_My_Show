//changing the background of the website from dark to light and vice versa
function change_background(){
    if (website.getAttribute('href')=='/stylesheets/index.css'){
        website.setAttribute('href', '/stylesheets/index2.css');
    }
    else{
        website.setAttribute('href', '/stylesheets/index.css');
    }
}

//changing the content of the website to give the user information about the website or choose a movie to select a seat
var movies=0;
function change_content(){
    if (movies===0){
        document.getElementById("movies").style.display="none";
        document.getElementById("information").style.display="block";
        movies=1;
    }
    else{
        document.getElementById("movies").style.display="block";
        document.getElementById("information").style.display="none";
        movies=0;
    }
}

//setting the initial values of variables
function change_var(){
    movies=0;
    document.getElementById("information").style.display="none";
}