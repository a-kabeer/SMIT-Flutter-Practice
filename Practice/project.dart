import 'dart:io';

void main() {
  print("Welcome ToDo Application");
  bool isActive = true;
  List TaskList = [];
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
        bool isNewTask = true;
        while (isNewTask) {
          stdout.write("Enter 0 to go back\nEnter your task: ");
          String newTask = stdin.readLineSync() ?? "";
          if (newTask == "" || newTask == "0") {
            if (newTask == "") {
              print("Please write something");
            } else if (newTask == "0") {
              isNewTask = false;
            }
          } else {
            TaskList.add(newTask);
            print("New Task added : $newTask");
            isNewTask = false;
          }
        }
      }
      //view task
      else if (option == 2) {
        if (TaskList.isEmpty) {
          print("There is no data to show");
        } else {
          print("Here is your task list: $TaskList");
        }
      }
      //update task
      else if (option == 3) {
        if (TaskList.isEmpty) {
          print("There is no data to update");
        } else {
          print("Which task u want to edit");
          int storeI = 0;
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
            } else if (update == null ||
                update > TaskList.length - 1 ||
                update < 0) {
              print(
                  "Please Select a valid number from 0 - ${TaskList.length - 1}");
            } else {
              List updateTask = [];
              stdout.write(
                  "Enter ${TaskList.length} to go back\nUpdate the Task: ");
              String newUpdateTask = stdin.readLineSync()!;
              if (newUpdateTask == TaskList.length.toString()) {
                isUpdate = false;
              } else {
                String oldValue = TaskList[update];
                updateTask.add(newUpdateTask);
                TaskList.replaceRange(update, update + 1, updateTask);
                print("$oldValue Successfully updated to ${TaskList[update]}");
                isUpdate = false;
              }
            }
          }
        }
      }
      //Delete task
      else if (option == 4) {
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
            } else if (delete == null ||
                delete < 0 ||
                delete > TaskList.length - 1) {
              stdout
                  .write("Select Correct Number 0 - ${TaskList.length - 1}: ");
            } else {
              String deletedTask = TaskList[delete];
              TaskList.removeWhere((e) => e == TaskList[delete]);
              print("Sucessfully deleted task: $deletedTask");
              isDelete = false;
            }
          }
        }
      }
      //exit
      else if (option == 5) {
        isActive = false;
        stdout.write(
            "If it was by mistake Press 1 to Restart the Program or any key to exit: ");
        bool isRetry = true;
        while (isRetry) {
          int? retry = int.tryParse(stdin.readLineSync() ?? "");
          if (retry == 1) {
            isActive = true;
            isRetry = false;
          } else {
            print("Progam Exited");
            isRetry = false;
          }
        }
      }
    }
  }
}
