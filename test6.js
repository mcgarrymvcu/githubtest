var readLineSync = require("readline-sync");

var arrayToAnalyze = [];
var singletonArray = [];

function getInput() {
    needInput = true;
    while (needInput) {
        n = readLineSync.question("Please enter an integer, or q to quit ");
        if (n.toLowerCase() == 'q') {
            needInput = false;
        } else {
            var newN = parseInt(n);
            if (isNaN(newN)) {
                console.log("Invalid Entry - please try again!")

            } else {
                arrayToAnalyze.push(n);
            }
        }
    }
}

function idSingletons() {
    for (var i=0; i<arrayToAnalyze.length; i++) {
        var isSingleton = true;
        for (j=0; j<arrayToAnalyze.length; j++) {
            if (i != j) {
                if  (arrayToAnalyze[i] == arrayToAnalyze[j]) {
                    isSingleton = false;
                } 
            }
        }
        if (isSingleton == true) {
            singletonArray.push(arrayToAnalyze[i]);
        }
    }
}

console.log("Beginning processing!")
getInput();
idSingletons();
if (singletonArray.length == 0) {
    console.log("There are no signletons in what was entered");
} else {
    console.log("Here are the singletons!");
    for (var i=0; i<singletonArray.length; i++) {
        console.log(singletonArray[i])
    }
}
console.log("Ending processing!")