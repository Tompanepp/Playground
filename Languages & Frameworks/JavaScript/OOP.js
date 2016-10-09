var Bike = function() {

  var gear = 0;
  this.getGear = function(){
    return this.gear;
  };
  
  this.setGear = function(gear){
    this.gear = gear;
  };
};


var myBike = new Bike();
myBike.setGear(4);
console.log(myBike.getGear());