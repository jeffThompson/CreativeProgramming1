
/*
ONE-LINE VERSION
Matthew de la Paz | 2019 | (with slight mods by Jeff Thompson)

A very clever one-line version in the spirit of the original
BASIC program by CP1 student Matthew de la Paz.

while(true)              a while-loop that runs forever
char(47)                 returns the "/" character (ascii-code 47)
floor(random(0.5, 1.5))  returns a 0 or 1, since floor() rounds down
* 45                     if random number is 0, this becomes 0...
                         ...if random number is 1, this becomes 45...
                         ...45+0 = 45 ("/"), but 45+47 = 92, which is "\"

*/


void setup(){while(true){print(char(47+floor(random(.5,1.5))*45));}}

// or in not-one-line-but-more-readable form...
// void setup() {
//   while(true) {
//     print( char(47 + floor(random(.5,1.5)) * 45) );
//   }
// }
