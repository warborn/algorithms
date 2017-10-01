// Replace all the spaces in a string with '%20'

// Big O
// TC: O(n)
// SC: O(n)

function URLify(str) {
  let urlified = '';
  str = str.trim();

  for(i = 0; i < str.length; i++) {
    urlified += str[i] === ' ' ? '%20' : str[i];
  }

  return urlified;
}

console.log(URLify('Mr John Smith   ')); // Mr%20John%20Smith
console.log(URLify('  Ms  Jane Doe')); // Ms%20%20Jane%20Doe
console.log(URLify('Hello Happy World')); // Hello%20Happy%20World