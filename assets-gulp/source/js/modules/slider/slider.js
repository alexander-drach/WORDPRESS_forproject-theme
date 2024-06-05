import Swiper from '../../vendor/swiper';

const slider = () => {
  const swiper = new Swiper('.swiper', {
    direction: 'horizontal',
    loop: true,

    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });

  return {swiper};
};

export {slider};
