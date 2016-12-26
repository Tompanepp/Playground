/* overide the module's exports with your own object
   We're using a function constructor here.
   This same object is returned for any subsequent calls of require('./greet3')
*/
function Greetr(){
  this.greeting = 'Hello world!!';
  this.greet = function(){
    console.log(this.greeting);
  }
}

module.exports = new Greetr();
