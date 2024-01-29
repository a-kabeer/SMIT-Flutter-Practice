import 'dart:io';

void main() {
  startApplication();
  while (isActive == true) {
    print("========");
    print("Press 1 for Add Task");
    print("Press 2 for View Task");
    print("Press 3 for Update Task");
    print("Press 4 for Delete Task");
    print("Press 5 for exit");
    int? option = int.tryParse(stdin.readLineSync() ?? "");
    //add task
    if (option == null || option < 1 || option > 5) {
      print("Please enter a valid option (1-5)");
    } else {
      if (option == 1) {
        addTask();
      }
      //view task
      else if (option == 2) {
        viewTask();
      } else if (option == 3) {
        updateTask();
      }
      //Delete task
      else if (option == 4) {
        deleteTask();
      }
      //exit
      else if (option == 5) {
        exitTask();
      }
    }
  }
}

String name1 = "";
bool isActive = true;
List TaskList = [];
RegExp pattern = RegExp(r'^[a-zA-Z]+(\s[a-zA-Z]+)*$');
startApplication() {
  print("ToDo Application");
  stdout.write("Before we start please Enter you name: ");
  bool isName = true;
  while (isName) {
    String name = stdin.readLineSync() ?? "";
    name1 = name;
    if (name == "" || !pattern.hasMatch(name)) {
      stdout.write("Please Enter valid name: ");
    } else {
      print("$name! Welcome to ToDo Application");
      isName = false;
    }
  }
}

addTask() {
  bool isNewTask = true;
  while (isNewTask) {
    stdout.write("Enter 0 to go back\nEnter your task: ");
    String newTask = stdin.readLineSync() ?? "";
    if (newTask == "" || newTask == "0" || !pattern.hasMatch(newTask)) {
      if (newTask == "") {
        print("Please write something");
      } else if (newTask == "0") {
        isNewTask = false;
      }
    } else if (!pattern.hasMatch(newTask)) {
      print("Please Enter text only");
    } else {
      TaskList.add(newTask);
      print("New Task added : $newTask");
      isNewTask = false;
    }
  }
}

viewTask() {
  if (TaskList.isEmpty) {
    print("There is no data to show");
  } else {
    print("Here is your task list:");
    for (var i = 0; i < TaskList.length; i++) {
      print("$i. My Task: ${TaskList[i]}");
    }
  }
}

//update task
updateTask() {
  if (TaskList.isEmpty) {
    print("There is no data to update");
  } else {
    print("Which task u want to edit");
    for (var i = 0; i < TaskList.length; i++) {
      print("$i : ${TaskList[i]}\n");
    }
    bool isUpdate = true;
    print(
        "Press ${TaskList.length} to go back\nSelect number from 0 - ${TaskList.length - 1}");
    while (isUpdate) {
      stdout.write("Enter Number: ");
      int? update = int.tryParse(stdin.readLineSync() ?? "");
      if (update == TaskList.length) {
        isUpdate = false;
      } else if (update == null || update > TaskList.length - 1 || update < 0) {
        for (var i = 0; i < TaskList.length; i++) {
          print("$i : ${TaskList[i]}\n");
        }
        print(
            "Enter ${TaskList.length} to go back\nPlease Select a valid number from 0 - ${TaskList.length - 1}");
      } else {
        List updateTask = [];
        bool isNewUpdateTask = true;
        while (isNewUpdateTask) {
          stdout
              .write("Enter ${TaskList.length} to go back\nUpdate the Task: ");
          String newUpdateTask = stdin.readLineSync() ?? "";
          if (newUpdateTask == TaskList.length.toString()) {
            isUpdate = false;
            isNewUpdateTask = false;
          } else if (newUpdateTask == "") {
            print("Please write something");
          } else if (!pattern.hasMatch(newUpdateTask)) {
            print("Enter Valid Text");
          } else {
            String oldValue = TaskList[update];
            TaskList[update] = newUpdateTask;
            print("$oldValue Successfully updated to ${TaskList[update]}");
            isNewUpdateTask = false;
            isUpdate = false;
          }
        }
      }
    }
  }
}

//Delete Task
deleteTask() {
  if (TaskList.isEmpty) {
    print("There is no data to delete");
  } else {
    print("Which task u want to delete");
    for (var i = 0; i < TaskList.length; i++) {
      print("$i : ${TaskList[i]}\n");
    }
    print(
        "Enter ${TaskList.length} to go back\nSelect number from 0 - ${TaskList.length - 1}");
    stdout.write("Enter Number: ");
    bool isDelete = true;
    while (isDelete) {
      int? delete = int.tryParse(stdin.readLineSync() ?? "");
      if (delete == TaskList.length) {
        isDelete = false;
      } else if (delete == null || delete < 0 || delete > TaskList.length - 1) {
        for (var i = 0; i < TaskList.length; i++) {
          print("$i : ${TaskList[i]}\n");
        }
        stdout.write(
            "Enter ${TaskList.length} to go back\nChoose Correct Number 0 - ${TaskList.length - 1}: ");
      } else {
        String deletedTask = TaskList[delete];
        TaskList.removeWhere((e) => e == TaskList[delete]);
        print("Sucessfully deleted task: $deletedTask");
        isDelete = false;
      }
    }
  }
}

//Exit task
exitTask() {
  isActive = false;
  stdout.write(
      "If it was by mistake Press 1 to Restart the Program or any key to exit: ");
  bool isRetry = true;
  while (isRetry) {
    int? retry = int.tryParse(stdin.readLineSync() ?? "");
    if (retry == 1) {
      isActive = true;
      print("Welcome Back, $name1!");
      isRetry = false;
    } else {
      print("Progam Exited");
      isRetry = false;
    }
  }
}
