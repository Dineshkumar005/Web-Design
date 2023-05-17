function ul(index) {

  var underlines = document.querySelectorAll(".underline");

  var root = underlines[0].parentNode;
  var offset = 1;
  for (var i = 0; i < index; i++) {
    offset += root.children.item(i + 3).offsetWidth;
  }

  var ul = document.getElementsByClassName("underline");
  for (var i = 0; i < ul.length; i++) {
    ul[i].setAttribute('style', 'width :' + root.children.item(index + 3).offsetWidth + 'px');
    ul[i].style.transform = 'translateX(' + offset + 'px)';
  }
}


function fill(obj) {
  
  var loader = document.getElementById("loader");
  var btn = document.getElementsByName("day");

  var i = 0;
  while (true) {
    if (obj === btn[i]) {
      if (i == btn.length - 1) {
        loader.style.backgroundPosition = "0%";
        break;
      }
      console.log(100 - ((i + 1) / btn.length * 100 - 1 / btn.length * 50));
      loader.style.backgroundPosition = 100 - ((i + 1) / btn.length * 100 - 1 / btn.length * 50) + "%";
      break;
    }
    i++;
  }
} 

