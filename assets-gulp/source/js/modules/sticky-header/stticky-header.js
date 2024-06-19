const stickyHeader = () => {
    const header = document.querySelector('.header');
    if(window.document.scrollingElement.scrollTop > 30){
      header.classList.add("fixed");
    }
    else { 
      header.classList.remove("fixed");
    }
    
    window.addEventListener('scroll', () => {
        if(window.document.scrollingElement.scrollTop > 30){
            header.classList.add("fixed");
          }
          else { 
            header.classList.remove("fixed");
          }
    })
};
  
export {stickyHeader};
  