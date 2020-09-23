
/*
CRYPTOGRAPHICALLY-SECURE RANDOM NUMBERS
Jeff Thompson | 2020 | jeffreythompson.org

As we saw in an earlier example, the random numbers that
p5.js creates for us are psuedo-random. But what if we
want REALLY random numbers?*

p5.js hides a lot of the "messy bits" from us, providing
easy ways to do things – the built-in random() command is
a great example. But being built on top of Javascript, we
also get access to all the rad stuff it can do, including
high-quality random numbers using Javascript's "crypto"
features. The way these numbers are generated varies
depending on what system you're using, but it can include
entropy from your hard-drive!

For more info:
https://developer.mozilla.org/en-US/docs/Web/API/Crypto/getRandomValues

* Any deep dive into cryptography and random numbers will
reveal that the definition of randomness is fuzzy and complex.
These numbers are certainly *more* random than using the 
built-in random() function but, if your application relies
on randomness you should def do your research first :)

*/


function setup() {
  createCanvas(400, 400);
  noLoop();
  
  // create a random cryptographically-secure
  // random number b/w 0–1000
  let randomNumber = cryptoRandom(0, 1000);
  console.log(randomNumber);
}


function draw() {
  background(220);
  
  // use our newly-minted random number
  // generator to draw some circles
  for (let i=0; i<100; i++) {
    fill(0);
    noStroke();
    let x = cryptoRandom(0, width);
    let y = cryptoRandom(0, height);
    let dia = cryptoRandom(4,12);
    circle(x, y, dia);
  }  
}


// custom functions are ideal for messy code that we want to
// use repeatedly, keeping our main code clean and easy to read
// here, we use Javascript's cryptographic random number generator
// to pick a random value, but modify it to behave more like
// the built-in random() function
function cryptoRandom(minValue, maxValue) {
  
  // the crypto library needs to return values to an array,
  // rather than a single number, and we have to specify what
  // kind of number it should give us (in this case, a 32-bit
  // signed (positive or negative) number)
  let value = new Int32Array(1);
  window.crypto.getRandomValues(value);
  
  // then, we can use p5.js' map() function to convert the number
  // we get from getRandomValues()* to the range we want
  value = map(value[0], -2147483647,2147483647, minValue,maxValue);
  return value;
  
  // * why those weird numbers?!?
  // you'll notive above that our array is Int32 which means
  // we get a 32-bit integer that can be positive or negative
  // 2^32 = 4,294,967,296
  // divided by 2 (half the range is +, half -) we get
  // 2,147,483,647!
}

