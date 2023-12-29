void main() {
  //Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them.
  int age1 = 3;
  int age2 = 5;
  if (age1 > age2) {
    print("Ali is $age1 & Zaid is $age2\nAli is Older than Zaid");
  } else if (age1 < age2) {
    print("Ali is $age2 & Zaid is $age1\nZaid is Younger than Ali");
  } else {
    print("Ali and Zaid are the same age, both are $age1 years old.");
  }
}
