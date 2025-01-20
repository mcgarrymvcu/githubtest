var readLineSync = require("readline-sync");

function getRawInput() {
    var needInput = true;
    while (needInput) {
        var init = readLineSync.questionInt("Please enter the starting number: ");
        if (init >= 0) {
            while (needInput) {
                var step = readLineSync.questionInt("Please enter the step amount: ");
                if (step > 0 ) {
                    needInput = false;
                } else {
                    console.log("Please enter a positive number for the step amount!")
               }
          }
        } else {
            console.log("Please enter a positive integer for the initial amount!")
        }
    }
   
    return {init, step}
}

function displayResults(x, y) {

    for (var i=x; i>= 0; i -= y) {
        console.log(i);
    }
}

console.log("Beginning processing!")

var {init, step} = getRawInput();
console.log(init)
console.log(step)
displayResults(init, step);

console.log("Finished processing!");
