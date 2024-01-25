void main() {
//Q.21: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".
  Map user = {"name": "Ali", "isAdmin": true, "isActive": true};
  if (user["isAdmin"] == true && user["isActive"] == true) {
    print("${user["name"]} is an Active Admin");
  } else {
    print("${user["name"]} is not an Active Admin");
  }
}
