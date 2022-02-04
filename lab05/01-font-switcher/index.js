const makeBigger = () => {

   element = document.querySelector("p");
   current = parseFloat(getComputedStyle(element).fontSize);
   current += 3;
   element.style.fontSize = current + "px";

   element = document.querySelector("h1");
   current = parseFloat(getComputedStyle(element).fontSize);
   current += 3;
   element.style.fontSize = current + "px";
};

const makeSmaller = () => {

   element = document.querySelector("p");
   current = parseFloat(getComputedStyle(element).fontSize);
   current -= 3;
   element.style.fontSize = current + "px";

   element = document.querySelector("h1");
   current = parseFloat(getComputedStyle(element).fontSize);
   current -= 3;
   element.style.fontSize = current + "px";
};


document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);

