const adminToolbar = () => {
  if (document.querySelector('#wp-toolbar')) {
    let wrapper = document.querySelector('.wrapper');
    let header = document.querySelector('.header');
    wrapper.classList.add('admin-toolbar');
    header.classList.add('admin-toolbar');
  }
};

export {adminToolbar};
