void main() {
  int classessHeld = 16;
  int classessAttended = 10;
  num percentage = (classessAttended / classessHeld) * 100;
  if (percentage >= 75) {
    print("You are allowed to sit in Exam");
  } else {
    print("Sorry! You are not allowed to sit in Exam");
  }
}
