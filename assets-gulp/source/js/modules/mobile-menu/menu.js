const openMenu = () => {
  const hamb = document.querySelector('.hamb');
  const header = document.querySelector('.header');
  const body = document.querySelector('body');
  const mobileMenuItems = document.querySelectorAll('.header .nav a');
  
  hamb.addEventListener('click', () => {
    header.classList.toggle('open');
    body.classList.toggle('open');
  });

  mobileMenuItems.forEach((item) => {
      item.addEventListener('click', () => {
      header.classList.remove('open');
      body.classList.remove('open');
    })
  })
};

export {openMenu};
