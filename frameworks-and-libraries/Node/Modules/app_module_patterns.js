var greet1 = require('./patterns/greet1');
greet1();

var greet2 = require('./patterns/greet2').greet;
greet2();

var greet3 = require('./patterns/greet3');
greet3.greet();
greet3.greeting = 'Changed Hello world!!';

var greet3b = require('./patterns/greet3');
greet3b.greet();

var Greet4 = require('./patterns/greet4');
var grtr = new Greet4;
grtr.greet();

var greet5 = require('./patterns/greet5');
greet5.greet();
console.log(greet5.greeting);
/*
  Does not work, because the variable is not revealed/exposed
  Seems to not work even if I export the varaible, why? : I wasn't not printing it, duh@@@!!??'
*/
