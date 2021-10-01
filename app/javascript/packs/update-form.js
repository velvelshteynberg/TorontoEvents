document.addEventListener('DOMContentLoaded', () => {
   
    
    console.log('greatness')  
    let button = document.querySelectorAll('.button');

    button.forEach((updateButton) => {
        updateButton.addEventListener('click', () => {
            console.log('inside the click event');
            document.querySelector('.update-form').style.display = 'flex';
        });
    });
});

