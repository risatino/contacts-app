// console.log(2 + 2);

// var pets = ["pig", "cat", "dog"]; //
// console.log(pets[1]); //
// pets.push("bird");
//  console.log(pets.indexOf(“bird”)); // outputs 1
// var book = ["title", "author", "isbn", "pages", "year of publication"]; 

// Math.floor(Math.random() * 10 + 1); // 
// Math.ceil(Math.random() * 10); //

// #1 option // Math.floor(Math.random() * 10 + 1); //
// #2 option // Math.ceil(Math.random() * 10); //

// ruby look-up (1...10) //

// for (var i = 0; i < 10; i--) {
//  console.log(i);
// }//

function sumOfNumbers(number1, number2) {
  return number1 + number2;
}

console.log(sumOfNumbers(5, 67));

// Create a function that accepts an array as an argument and returns the average. (Basically the same as before, but wrap that code in a function and demonstrate its usage.)

// var numbers = ["2", "4", "6"];
// console.log(numbers[0]);
// console.log(numbers[1]);
// console.log(numbers[2]);
// numbers.push(numbers);
// console.log(numbers);
// console.log(numbers.length);
// console.log(numbers.indexOf())

var sumOfNumbers = function(number1, number2) {
  return (number1 + number2) / 2;
};
console.log(sumOfNumbers(54, 66));
