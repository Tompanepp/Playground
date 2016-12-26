/*
  The revealing module pattern

  You only expose what you want the world to see (an interface)
  variables like greeeting are hidden from the client of this module in this implementation
*/
var greeting = 'Hello world!!!!';

function greet(){
  console.log(greeting);
}

module.exports = {
  greet: greet,
  greeting: greeting
}
