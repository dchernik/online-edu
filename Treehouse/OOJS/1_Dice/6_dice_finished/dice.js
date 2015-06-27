function Dice(sides) {
  this.sides = sides || 6;
}

Dice.prototype.roll = function () {
    var randomNumber = Math.floor(Math.random() * this.sides) + 1;
    return randomNumber;
}

var dice6 = new Dice(6);
var dice10 = new Dice(10);
var dice = new Dice();

console.log(dice6.roll === dice10.roll);
console.log(dice.sides);
