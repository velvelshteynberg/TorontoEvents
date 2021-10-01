document.addEventListener('DOMContentLoaded', () => {
   
    
    console.log('greatness')  

    var x = document.querySelectorAll('.button')
    console.log(x)
    x.forEach(object) => {
        object.addEventListener('click', () => {
            console.log(inside);
        });
    };
    
    // document.getElementById("update-button").addEventListener('click', () => {
    //     document.querySelector(".update-form").style.display = 'flex';
    //     document.body.style.backgroundColor = 'grey';
    //     document.querySelector('.submit-button').addEventListener('click', () =>{
    //     document.querySelector(".update-form").style.display = 'none';
    //     })
    // });

  

});

