document.addEventListener('DOMContentLoaded', () => {
    
    console.log('absolute greatness')

    document.getElementById("update-button").addEventListener('click', () => {
        document.querySelector(".update-form").style.display = 'flex';
        document.querySelector(".body").style.background = 'rgba(0,0,0,0.7)';

        document.querySelector('.submit-button').addEventListener('click', () =>{
        document.querySelector(".update-form").style.display = 'none';
        })
    });
});