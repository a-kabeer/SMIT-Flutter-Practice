import 'dart:convert';
import 'dart:io';

bool isActive = true;
List TaskList = [];
RegExp dateRegex = RegExp(
    r'^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])\s(0[1-9]|1[0-2]):([0-5][0-9])(am|pm)$');
RegExp pattern = RegExp(r'^[a-zA-Z]+(\s[a-zA-Z]+)*$');
List priority = ["Urgent", "High", "Normal", "Low"];

class ToDo {
  String? email;
  String? name;
  String file = 'data.json';
  //Constructor
  ToDo({required name, required email}) {
    this.email = email;
    this.name = name;
  }
  startApplication() {
    print("$name! Welcome to ToDo Application");
    while (isActive == true) {
      print("---- Select an option ----");
      print("Press 1 for Add Task");
      print("Press 2 for View Task");
      print("Press 3 for Update Task");
      print("Press 4 for Delete Task");
      print("Press 5 for exit");

      int? option = int.tryParse(stdin.readLineSync() ?? "");
      //add task

      switch (option) {
        case 1:
          addTask();
          break;
        case 2:
          viewTask();
          break;
        case 3:
          updateTask();
          break;
        case 4:
          deleteTask();
          break;
        case 5:
          exitTask();
          break;
        default:
          print("Please enter a valid option (1-5)");
          break;
      }
    }
  }

  readData() {
    File userCreated = File('data.json');
    if (!userCreated.existsSync()) {
      userCreated.createSync();
      userCreated.writeAsStringSync('[]');
    }
    String content = userCreated.readAsStringSync();
    List userData = jsonDecode(content);
    return userData;
  }

  addTask() {
    print(name);
    bool isNewTask = true;
    String objTaskTitle = "";
    String objTaskDueDate = "";
    int objTaskPriority = 0;
    while (isNewTask) {
      // Task Title Input
      bool isTaskTitle = true;
      while (isTaskTitle) {
        stdout.write("Enter 0 to go back\nEnter your task title: ");
        String taskTitle = stdin.readLineSync() ?? "";
        if (taskTitle == "0" || !pattern.hasMatch(taskTitle)) {
          if (taskTitle == "0") {
            return; // Exit the function if the user enters 0
          } else if (!pattern.hasMatch(taskTitle)) {
            print("Enter Correct Text");
          }
        } else {
          objTaskTitle = taskTitle;
          isTaskTitle = false;
        }
      }

      // Task Due Date Input
      bool isDueDate = true;
      stdout.write("Enter 0 to go Back\nEnter your task Due Date: ");
      while (isDueDate) {
        String taskDueDate = stdin.readLineSync() ?? "";
        if (taskDueDate == '0' || !dateRegex.hasMatch(taskDueDate)) {
          if (taskDueDate == '0') {
            return; // Exit the function if the user enters 0
          } else if (!dateRegex.hasMatch(taskDueDate)) {
            print(
                "Enter 0 to go Back\nPlease enter the date and time in the format DD/MM HH:MMam/pm, e.g., 01/01 03:45pm");
            isDueDate = true;
          }
        } else {
          objTaskDueDate = taskDueDate;
          isDueDate = false;
        }
      }
      print(
          "Enter ${priority.length + 1} to go back\nEnter your task priority: ");
      for (var i = 0; i < priority.length; i++) {
        print("${i + 1}. ${priority[i]}");
      }
      bool isTaskPriority = true;
      while (isTaskPriority) {
        int? taskPriority = int.tryParse(stdin.readLineSync() ?? "");
        if (taskPriority == null ||
            taskPriority < 1 ||
            taskPriority > priority.length + 1 ||
            taskPriority == priority.length + 1) {
          if (taskPriority == null ||
              taskPriority < 1 ||
              taskPriority > priority.length + 1) {
            for (var i = 0; i < priority.length; i++) {
              print("${i + 1}. ${priority[i]}");
            }
            stdout.write(
                "Enter ${priority.length + 1} to go back\nPlease Enter a correct number: ");
          } else if (taskPriority == priority.length + 1) {
            return;
          }
        } else {
          taskPriority -= 1;
          objTaskPriority = taskPriority;
          isTaskPriority = false;
        }
      }
      List userData = readData();
      File userCreated = File('data.json');
      for (var account in userData) {
        if (account['email'] == email) {
          account['task'].add({
            "taskTitle": objTaskTitle,
            "taskDueDate": objTaskDueDate,
            "taskPriority": priority[objTaskPriority]
          });
          String jsonString = jsonEncode(userData);
          userCreated.writeAsStringSync(jsonString);
          print("Task Successfully added");
          print("Task Title: $objTaskTitle");
          print("Due Date: $objTaskDueDate");
          print("Priority: ${priority[objTaskPriority]}");
        }
      }

      isNewTask = false;
    }
  }

  viewTask() {
    List userData = readData();
    for (var checkData in userData) {
      if (checkData['email'] == email) {
        if (checkData['task'].isEmpty) {
          print("There is no data to show");
          return;
        } else {
          print("Here is your task list:\n--------------");
          for (var i = 0; i < checkData['task'].length; i++) {
            print("Task ${i + 1}:");
            print("Task Title: ${checkData['task'][i]["taskTitle"]}");
            print("Due Date: ${checkData['task'][i]["taskDueDate"]}");
            print("Priority: ${checkData['task'][i]["taskPriority"]}");
            print("--------------");
          }
        }
      }
    }
  }

  updateTask() {
    List userData = readData();
    for (var checkData in userData) {
      if (checkData['email'] == email) {
        if (checkData['task'].isEmpty) {
          print("There is no data to update");
          return;
        } else {
          print("Which task u want to edit");
          for (var i = 0; i < checkData['task'].length; i++) {
            print("${i + 1} : ${checkData['task'][i]["taskTitle"]}\n");
          }
          bool isUpdate = true;
          print(
              "Press ${checkData['task'].length + 1} to go back\nSelect number from 1 - ${checkData['task'].length}");
          while (isUpdate) {
            stdout.write("Enter Number: ");
            int? update = int.tryParse(stdin.readLineSync() ?? "");
            if (update == checkData['task'].length + 1) {
              isUpdate = false;
            } else if (update == null ||
                update > checkData['task'].length ||
                update < 1) {
              for (var i = 0; i < checkData['task'].length; i++) {
                print("${i + 1} : ${checkData['task'][i]["taskTitle"]}\n");
              }
              print(
                  "Enter ${checkData['task'].length + 1} to go back\nPlease Select a valid number from 1 - ${checkData['task'].length}");
            } else {
              update -= 1;
              bool isNewUpdateTask = true;
              while (isNewUpdateTask) {
                print("Enter ${checkData['task'].length} to go back");
                print("--------------");
                print("Task Title: ${checkData['task'][update]["taskTitle"]}");
                print("Due Date: ${checkData['task'][update]["taskDueDate"]}");
                print("Priority: ${checkData['task'][update]["taskPriority"]}");
                print("--------------");
                stdout.write("Enter here to update task title: ");
                String newUpdateTask = stdin.readLineSync() ?? "";
                if (newUpdateTask == checkData['task'].length.toString()) {
                  return;
                } else if (newUpdateTask == "") {
                  print("Please write something");
                } else if (!pattern.hasMatch(newUpdateTask)) {
                  print("Enter Valid Text");
                } else {
                  String oldValue = checkData['task'][update]["taskTitle"];
                  checkData['task'][update]["taskTitle"] = newUpdateTask;
                  updateData(file, userData);
                  print(
                      "Task Title: $oldValue Successfully updated to ${checkData['task'][update]["taskTitle"]}");
                  isNewUpdateTask = false;
                  isUpdate = false;
                }
              }
            }
          }
        }
      }
    }
  }

  updateData(String file, List userData) {
    File file = File('data.json');
    file.writeAsStringSync(jsonEncode(userData));
  }

  deleteTask() {
    List userData = readData();
    // File userCreated = File('data.json');
    for (var checkData in userData) {
      if (checkData['email'] == email) {
        if (checkData['task'].isEmpty) {
          print("There is no data to delete");
          return;
        } else {
          print("Which task u want to delete");
          for (var i = 0; i < checkData['task'].length; i++) {
            print("${i + 1} : ${checkData["task"][i]['taskTitle']}\n");
          }
          print(
              "Enter ${checkData['task'].length + 1} to go back\nSelect number from 1 - ${checkData['task'].length}");
          stdout.write("Enter Number: ");
          bool isDelete = true;
          while (isDelete) {
            int? delete = int.tryParse(stdin.readLineSync() ?? "");
            if (delete == checkData['task'].length + 1) {
              isDelete = false;
            } else if (delete == null ||
                delete < 1 ||
                delete > checkData['task'].length) {
              for (var i = 0; i < checkData['task'].length; i++) {
                print("${i + 1} : ${checkData['task'][i]["taskTitle"]}\n");
              }
              stdout.write(
                  "Enter ${checkData['task'].length + 1} to go back\nChoose Correct Number 1 - ${checkData['task'].length}: ");
            } else {
              delete -= 1;
              String deletedTask = checkData['task'][delete]["taskTitle"];
              checkData['task']
                  .removeWhere((e) => e == checkData['task'][delete]);
              updateData(file, userData);
              print("Sucessfully deleted task: $deletedTask");
              isDelete = false;
            }
          }
        }
      }
    }
  }

  exitTask() {
    isActive = false;
    stdout.write(
        "If it was by mistake Press 1 to Restart the Program or any key to exit: ");
    bool isRetry = true;
    while (isRetry) {
      int? retry = int.tryParse(stdin.readLineSync() ?? "");
      if (retry == 1) {
        isActive = true;
        print("Welcome Back, $name!");
        isRetry = false;
      } else {
        print("Progam Exited");
        isRetry = false;
      }
    }
  }
}
