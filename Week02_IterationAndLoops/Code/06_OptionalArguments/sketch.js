
/*
OPTIONAL ARGUMENTS FOR FUNCTIONS
Jeff Thompson | 2017/20 | jeffreythompson.org

Sometimes you want a function to have optional parameters,
and want a default if they aren't specified. Languages like
Python make this really easy, but Javascript requires a little
more work from us and the syntax can be a bit confusing.

Essentially, any argument can be optional and you can specify
a default value at the start of the function's code. Let's
say we want to create a new rectangle() function that allows
us to either give a width and height (like normal) OR we
can input just one dimension and it will draw a square:

	function rectangle(x, y, w, h) {
		if (h === undefined) {
			h = w;
		}
		rect(x, y, w, h);
	}

If the height is "undefined" (meaning not given a value)
then we set the height equal to the width. This is a bit
messy (though easier to read) but we can shorten it like this:

	function rectangle(x, y, w, h) {
		h = h || w;
		rect(x, y, w, h);
	}

This sets the height equal to the value we passed in, if it
exists, otherwise it sets it to the width.

You can read lots more about this, including other approaches
that do the same thing, here:
https://www.markhansen.co.nz/javascript-optional-parameters

CHALLENGES:
1. Can you think of times when having optional arguments for
   a command might be helpful? Even if you can't figure out
   how to write the code, can you list some?
2. If you're feeling up for it, can you create a version of
   a built-in p5.js command that includes optional arguments?

*/


function setup() {

	// let's see a practical example:
	// if we have an animation or other time-based
	// process and we want to see how far along it
	// is, we might want a nicely-formatted bit of
	// text that tells us the % we've gone so far

	// this is a perfect candidate for a function:
	// some code that is complicated and we can 
	// re-use later, if we make it flexible enough

	// this function (below) lets us additionally
	// specify how many decimal places we want the
	// result to be – if we're showing it as part
	// of a user interface, we might not need 10
	// decimal places!
	let soFar =         42;
	let total =         100;
	let decimalPlaces = 4;
	console.log(percentDone(soFar, total, decimalPlaces)  + '%');

	// but other times, we might just want our function
	// to have a default choice for the decimal places,
	// maybe because it's the most common value and it's
	// quicker to not write the extra value
	soFar = 87.5;
	total = 230;
	console.log(percentDone(soFar, total) + '%');

	// this time, we've only listed two values but our
	// function doesn't give an error!
}


// our percentage function, which includes all three
// parameters and a default for the precision
function percentDone(num, total, decimalPlaces) {
	
	// use "decimalPlaces" if passed in, otherwise
	// default to 2
	decimalPlaces = decimalPlaces || 2;

	// return a string (text) formatted nicely using
	// p5.js' great nf() function*
	return nf((num/total) * 100.0, 0, decimalPlaces);
}

