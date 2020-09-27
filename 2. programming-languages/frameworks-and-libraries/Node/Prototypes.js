function Person(firstname, lastname){
    this.firstname = firstname
    this.lastname = lastname
}

Person.prototype.greet = function(){
    console.log("Hello " + this.firstname + " " + this.lastname)
}

let john = new Person("John", "Doe");
let jane = new Person("Jane", "Doe");

console.log(john)
john.greet()
jane.greet()