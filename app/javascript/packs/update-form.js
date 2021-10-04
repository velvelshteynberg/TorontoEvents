document.addEventListener('DOMContentLoaded', () => {
   
    
    console.log('greatness')  
    let button = document.querySelectorAll('.button');

    button.forEach((updateButton) => {
        updateButton.addEventListener('click', () => {
            console.log(updateButton.id);
            let div = document.querySelector(`.div${updateButton.id}`);
            div.style.display = 'flex';

            let form = document.querySelector(`.Form${updateButton.id}`);
            form.style.display = 'flex';
            document.body.style.backgroundColor = 'grey';

            let logout = document.querySelector(`.logout${updateButton.id}`);
            logout.addEventListener('click', (e) => {
                div.remove();
                div.style.display = 'none';
                document.body.style.backgroundColor = 'white';
            });
            
            form.addEventListener('submit', (e) => {
               /* e.preventDefault();
                e.stopPropagation();*/
                

                div.style.display = 'none';
                document.body.style.backgroundColor = 'white';

               /*let message = new FormData(form);

                fetch(form.action, {
                    method: form.method, 
                    body: message , 
                    headers: {
                        Accept: 'text/html'
                    }
                }).then((data) => data.text())
                  .then ((data) => {
                      console.log(data)
                      form.reset();
                  }) .catch((err) => console.log(err))*/

            })
        });





    });
});

