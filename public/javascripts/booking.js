//booking a movie show via ajax requests
function book_show(){
    var select = document.getElementById('list_movies');
    var value = select.options[select.selectedIndex].value;
    var xhttp=new XMLHttpRequest();
    xhttp.onreadystatechange=function() {
        if (this.readyState==4 && this.status==200) {
            const ans=this.responseText;
            document.getElementById("show_movies").innerText=ans;
        }
    };
    xhttp.open("GET", "/movie");
    xhttp.send();
}

//confirmation
function confirmation(){
    alert("Reservation Confirmed!");
}