var readLineSync = require("readline-sync");
var inIntegers = [];

function getInput() {
    var needInput = true;
    while (needInput) {
        n = readLineSync.question("Please enter an integer, or q to quit: ");
        if (n.toLowerCase() == 'q') {
            needInput = false
        } else {
            n = parseFloat(n);
            if (Number.isNaN(n)) {
                console.log("Invalid entry - please try again!");
            } else {
                inIntegers.push(n);
            }
        }
    }
}

function displayOutput() {
    inIntegers.sort();
    var outSum = 0;
    var mid = Math.floor(inIntegers.length / 2);
    console.log(mid)
    console.log(inIntegers[mid]);
    outMode = 0;

    if (inIntegers.length == 0) {
        console.log("No integers entered - nothing to display!")
    } else {
        for (var i=0; i<inIntegers.length; i++) {
            outSum = outSum + inIntegers[i];
        }
        console.log(outSum / inIntegers.length);
    }
}

console.log("Starting processing!!!");
getInput();
displayOutput();
console.log("Finished processing!");