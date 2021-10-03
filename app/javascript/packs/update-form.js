document.addEventListener('DOMContentLoaded', () => {
   
    
    console.log('greatness')  
    let button = document.querySelectorAll('.button');

    button.forEach((updateButton) => {
        updateButton.addEventListener('click', () => {
            console.log(updateButton.id);
            let div = document.querySelector(`.div${updateButton.id}`);
            div.style.display = 'flex';

            let form = document.querySelector(`.form${updateButton.id}`);
            form.style.display = 'flex';
            document.body.style.backgroundColor = 'grey';

        });





    });
});

