
document.addEventListener('DOMContentLoaded', ()=>{
    const events = document.querySelectorAll('.event');
    const addImgClass = (elem, id) => {
        elem.classList.toggle(`image${id}`, true)
    }
    for (const e of events) {
       addImgClass(e, Math.floor(Math.random() * (7 - 1 + 1)) + 1)
    }
})