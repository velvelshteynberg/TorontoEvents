document.addEventListener('DOMContentLoaded', function(){
    console.log(location.pathname);
    let header = document.querySelector('.app_header');
    let main = document.querySelector('.app_header_main');
    let bottom = document.querySelector('.app_header_bottom');
    if (window.location.href === '/') {
        console.log("else");
    } else {
        // top.style.height = "120px";
        console.log("hi");
        console.log(header);
        header.style.height = "170px";
        header.style.padding = "30px";
        console.log(main);
        main.style.display = "none";
        console.log(bottom);
        bottom.style.display = "none";
    }        

});


