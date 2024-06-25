window.onload = function () {
  const text = document.getElementById('switch');
  text.onmouseover = function () {
    text.setAttribute('class', 'ugly');
  };
  text.onmouseout = function () {
    text.setAttribute('class', 'pretty');
  };
};
