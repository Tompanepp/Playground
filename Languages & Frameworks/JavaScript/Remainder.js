function mod(Rational){
  let flooredQuotient = Math.floor(Rational.numerator / Rational.denominator)
  let flooredQuotientSquared = flooredQuotient * flooredQuotient
  let remainder = Rational.numerator - flooredQuotientSquared

  return remainder
}

function Rational(numerator, denominator){
  this.numerator = numerator
  this.denominator = denominator
}

let test = new Rational(5,2)
console.log("The remainder of 5/2 is: ", mod(test))
let test2 = new Rational(-5,2)
console.log("The remainder of -5/2 is: ", mod(test2))
