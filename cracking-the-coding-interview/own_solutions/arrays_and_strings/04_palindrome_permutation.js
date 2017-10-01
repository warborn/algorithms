// Check if a given string is a permutation of a palindrome

// Big O
// TC: O(n)
// SC: O(n)

function palindromePermutation(str) {
  let ocurrences = {};
  str = str.toLowerCase();

  for(let i = 0; i < str.length; i++) {
    let key = str[i];
    if(key !== ' ') {
      if(ocurrences[key]) {
        ocurrences[key] += 1;
      } else {
        ocurrences[key] = 1;
      }
    }
  }

  let foundOdd = false;
  for(let prop in ocurrences) {
    if(ocurrences.hasOwnProperty(prop)) {
      if(ocurrences[prop] % 2 == 1) {
        if(foundOdd) return false;
        foundOdd = true;
      }
    }
  }

  return true;
}

console.log(palindromePermutation('Tact Coa')); // true
console.log(palindromePermutation('Hello World')); // false
console.log(palindromePermutation('Bus Obus')); // true
console.log(palindromePermutation('word')); // false
console.log(palindromePermutation('word dwior')); // true
console.log(palindromePermutation('taco cat')); // true
console.log(palindromePermutation('tttaacco')); // false
console.log(palindromePermutation('ttaacc')); // true
console.log(palindromePermutation('ttaxcc')); // false