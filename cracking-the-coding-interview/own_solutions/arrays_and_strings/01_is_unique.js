// Determine if a string has all unique characters.

// Big O
// TC: O(n^2)
// SC: O(1)

function isUnique(word) {
  for(let i = 0; i < word.length; i++) {
    if(word.indexOf(word[i]) !== i) return false;
  }
  return true;
}

console.log(isUnique('hello world')); // false
console.log(isUnique('vampire')); // true
console.log(isUnique('words')); // true
console.log(isUnique('javascript')); // false
console.log(isUnique('python')); // true