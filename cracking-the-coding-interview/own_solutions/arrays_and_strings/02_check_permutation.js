// Given two strings determine if one is a permutation of the other.

// Big O
// TC: O(A + B)
// SC: O(A) 

function checkPermutation(str1, str2) {
  let ocurrences = {};

  for(let i = 0; i < str1.length; i++) {
    let char = str1[i];
    if(ocurrences[char]) {
      ocurrences[char]++;
    } else {
      ocurrences[char] = 1;
    }
  }

  for(let i = 0; i < str2.length; i++) {
    let char = str2[i];
    if(ocurrences[char] && ocurrences[char] > 0) {
      ocurrences[char]--;
    } else {
      return false;
    }
  }

  return true;
}

console.log(checkPermutation('abc', 'bca')); // true
console.log(checkPermutation('abc', 'cab')); // true
console.log(checkPermutation('abc', 'bbc')); // false
console.log(checkPermutation('abc', 'aaa')); // false
console.log(checkPermutation('abc', 'bcd')); // false
console.log(checkPermutation('vampire', 'ieprmav')); // true
console.log(checkPermutation('hello', 'hlllo')); // false