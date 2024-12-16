var input_array = ["racecar", "hello", "Level", "I", "world", "mad am", "12321", "not a palindrome"];
var clean_array = [];
var output_array = []

function clean_string(in_string) {
    var new_string = " ";
    // first, make everything lower case so case is ignored
    new_string = in_string.toLowerCase();
    // now remove the spaces, if any
    new_string = new_string.replace(" ", "");
    return new_string
}

function reverse_string(in_string) {
    return in_string.split('').reverse().join('');
}

function check_palindrome(in_string) {
    if (in_string.length <= 1) {
        return true;
    } else {
        compare_string = reverse_string(in_string);
        if (compare_string == in_string) {
            return true;
         } else {
            return false; 
        }
    }
}

for (var i=0; i < input_array.length; i++) {
    // first, clean the string 
    clean_array[i] = clean_string(input_array[i]);
    var j = 0;
    // then determine if the cleaned string, which excludes case and space,
    // is a palindrone
    if (check_palindrome(clean_array[i])) {
        output_array[j] = input_array[i];
        console.log(output_array[j])
        j++;
    }
    
}
