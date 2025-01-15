var readLineSync = require("readline-sync");
var inputArray = [];

function getInput() {
    var needInput = true;
    while (needInput) {
        var inString = readLineSync.question("Please enter an integer, or 'q' to quit ");
        if (inString.toLowerCase() == 'q') {
            needInput = false;
        } else {
            var inNum = parseInt(inString);
            if (isNaN(inNum)) {
                console.log(inString.concat(" is what you entered!"));
                console.log("That is an invalid entry - please try again.")
            } else {; 
                inputArray.push(inNum)
            }
        }
    }
}

function lookForMatch() {
    var match = false;
    for (i=0; i<inputArray.length; i++) {
        for (j=0; j<inputArray.length; j++) {
            if (i != j) {
                var z = inputArray[i] * inputArray[j];
                if (inputArray.includes(z) && !match) {
                    for (k=0; k<inputArray.length; k++) {
                        if (k != i && k != j && inputArray[k] == z && !match ) {
                            var outString = "Found one " 
                            outString = outString.concat(inputArray[i], " * ",  inputArray[j], ' = ', z.toString());
                            console.log(outString)
                            match = true;
                        }
                    }   
                }
            }
        }
    }
    if (!match) {
        console.log("Got nothing")
    }
}

console.log("Beginning processing!");
getInput();
if (inputArray.length <= 2) {
    console.log("Not enough entries to find a match");
} else {
    lookForMatch();
}
console.log("Ending processing");