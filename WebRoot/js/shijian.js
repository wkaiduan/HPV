window.onload = init;
function init() {
  window.setInterval(time, 66);
}
function time() {
	var tim = new Date();
	var clockDiv = document.getElementById("clock");
	clockDiv.innerHTML = tim.toLocaleTimeString();
}
var c = document.getElementById('canv');
var $ = c.getContext('2d');

function myProgressbar(id) {
  var obj = {
    outer: [
    document.getElementById(id),
    {
      display: 'inline-block',
      width: '1000px',
      background: 'black',
      borderRadius: '100px',
    }],
    inner: [
    document.createElement('div'),
    {
      margin: '15px',
      height: '20px',
      background: 'yellow'
    }]
  },
    i, m;
  obj.outer[0].appendChild(obj.inner[0]);
 for (i in obj) {
    for (m in obj[i][1]) {
      obj[i][0].style[m] = obj[i][1][m];
    }
  }
  var width = obj.inner[0].offsetWidth;
  obj.outer[0].style.height = obj.outer[0].offsetHeight;
  var progress = function (m) {
      if (m <= 100 && m >= 0) {
        obj.inner[0].style.width = Math.round(width / 100 * m) + 'px'
      }
    },
    p = 0,
    napr,
    interval = setInterval(function () {
    if (p <= 1) {
      napr = '+';
      obj.outer[0].setAttribute('align', 'left');
    }
    if (p >= 100) {
      napr = '-';
      obj.outer[0].setAttribute('align', 'right');
    }
    napr === '+' ? p++ : p--;
    progress(p);
  }, 0);
}
myProgressbar('pb');

var col = function(x, y, r, g, b) {
  $.fillStyle = "rgb(" + r + "," + g + "," + b + ")";
  $.fillRect(x, y, 1,1);
}
var R = function(x, y, t) {
  return( Math.floor(192 + 64*Math.cos( (x*x-y*y)/300 + t )) );
}
var G = function(x, y, t) {
  return( Math.floor(192 + 64*Math.sin( (x*x*Math.cos(t/4)+y*y*Math.sin(t/3))/300 ) ) );
}
var B = function(x, y, t) {
  return( Math.floor(192 + 64*Math.sin( 5*Math.sin(t/9) + ((x-100)*(x-100)+(y-100)*(y-100))/1100) ));
}
var t = 0;
var run = function() {
  for(x=0;x<=35;x++) {
    for(y=0;y<=35;y++) {
      col(x, y, R(x,y,t), G(x,y,t), B(x,y,t));
    }
  }
  t = t + 0.120;
  window.requestAnimationFrame(run);
}
run();