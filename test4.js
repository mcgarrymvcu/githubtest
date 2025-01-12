var readLineSync = require("readline-sync");

function rollDice() {
    die = Math.floor(Math.random() * 6) + 1;
    console.log(die)
    return die
}

function executetRoll() {
    die1 = rollDice();
    die2 = rollDice();
    init = "You rolled a "
    var message =  init.concat(die1.toString(), " and a ", die2.toString());
    console.log(message)
    return die1 + die2
}

var roll = executetRoll();

if (roll == 7 || roll == 11) {
    console.log("You win!");
} else if (roll == 2 || roll == 12) {
    console.log("You lose!");
} else {
    var point = roll;
    var contRolling = true;
    while (contRolling) {
        roll = executetRoll();
        if (roll == 7 || roll == 11) {
            console.log("You lose!");
            contRolling = false;
        } else if (roll == point ) {
            console.log("You win!");
            contRolling = false;
        } else {
            console.log("Need to roll again!");
        }
    }
}

