document.addEventListener('DOMContentLoaded', function(){
    console.log(location.pathname);
    let top = document.querySelector('#top');
    if (location.pathname === '/') {
        // top.style.height = "20%";
        // top.style.color = "blue";
        console.log("hi");
    } else {
        // top.style.height = "120px";
        console.log("else")
    }        

});


