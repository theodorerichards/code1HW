// https://p5js.org/reference/
// https://www.processing.org/reference/
// @DanielSchiffman https://www.youtube.com/watch?v=eGFJ8vugIWA&t=1039s
// @BryanMa
// @tfguy44 https://forum.processing.org/one/topic/random-text.html
// @JorgeLuisBorges - Collected Fictions
// @lmccart https://github.com/processing/p5.js/issues/536


var go1;
var go2;
var go3;
var currentGram;
var txt;
var results = [];
var order = 4;
var ngrams = {};
var beginnings = [];

function preload() {
	txt = loadStrings('borges.txt');
  console.log(txt);
}

function setup() {
	createCanvas(4000, 16000);
	txt = join(txt, '\n');
	for (go1 = 0; go1 < 100; go1++) {
		for (var i = random(txt.length); i <= txt.length - order; i++) {
			var gram = txt.substring(i, i + order);
  			if (i==random(txt.length)) {
    			beginnings.push(gram);
  			}
				if (!ngrams[gram]) {
					ngrams[gram] = [];
				}
				ngrams[gram].push(txt.charAt(i + order));
			}
	console.log(ngrams);
	markovIt();
  }
}

function draw() {
	textSize(12);
	textLeading(random(50));
	display();
	fill(0);
	noStroke();
	noLoop();
}

function display() {
	for (var i = 0; i < results.length; i++) {
	var x = 10;
	for (go2 = 0; go2 < 10; go2++) {
	var y = 0;
	var incr =+ 1;
		for (var k = 0; k < 100; k++) {
			textAlign(CENTER,TOP);
			var incrPos = k % incr;
			if (k % incr === 0) {
				y += random(200);
			}
			text(results[i].charAt(k), random(4000)+incrPos*(x-10), y);
			x += random(1);
		}
	}
  }
}

function markovIt() {
	currentGram = txt.substring(0, order);
	results.push(currentGram);
	for (var i = 0; i < 200; i++) {
		var possibilities = ngrams[currentGram];
		var next = random(possibilities);
		results[results.length-1] += next;
		var len = results[results.length-1].length;
		currentGram = results[results.length-1].substring(len - order, len);
	}
	console.log(results[results.length-1]);
}

function mousePressed() {
  text("" + char(int(random(97,122))), mouseX, mouseY);
  return false;
}

function keyTyped() {
	fill(0);
	text(key, mouseX, mouseY);
}
