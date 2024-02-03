//Implement a function that checks if a given string is a palindrome.
//Example:
//Input: "radar"
//Output: "radar" is a palindrome.
void main() {
  print(isPalindrome("radar"));
  print(isPalindrome("abc"));
  print(isPalindrome("xyz"));
}

isPalindrome(String isRadar) {
  if (isRadar == "radar") {
    return "$isRadar is a palindrome.";
  } else {
    return "$isRadar is not a palindrome.";
  }
}
