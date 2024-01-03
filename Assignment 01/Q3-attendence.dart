void main() {
  //Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value: Number of classes held = 16, Number of classes attended = 10, and print percentage of class attended. Is student is allowed to sit in exam or not?
  int classessHeld = 16;
  int classessAttended = 10;
  num percentage = (classessAttended / classessHeld) * 100;
  if (percentage >= 75) {
    print("You are allowed to sit in Exam");
  } else {
    print("Sorry! You are not allowed to sit in Exam");
  }
}