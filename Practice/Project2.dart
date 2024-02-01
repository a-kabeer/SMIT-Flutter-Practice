import 'dart:io';

String name1 = "";
bool isActive = true;
List TaskList = [];
RegExp dateRegex = RegExp(
    r'^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])\s(0[1-9]|1[0-2]):([0-5][0-9])(am|pm)$');
RegExp pattern = RegExp(r'^[a-zA-Z]+(\s[a-zA-Z]+)*$');
List priority = ["Urgent", "High", "Normal", "Low"];

void main() {
  startApplication();
  while (isActive == true) {
    print("---- Select an option ----");
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
    print("Enter ${priority.length} to go back\nEnter your task priority: ");
    for (var i = 0; i < priority.length; i++) {
      print("$i. ${priority[i]}");
    }
    bool isTaskPriority = true;
    while (isTaskPriority) {
      int? taskPriority = int.tryParse(stdin.readLineSync() ?? "");
      if (taskPriority == null ||
          taskPriority < 0 ||
          taskPriority > priority.length ||
          taskPriority == priority.length) {
        if (taskPriority == null ||
            taskPriority < 0 ||
            taskPriority > priority.length) {
          print(
              "Enter ${priority.length} to go back\nPlease Enter a correct number");
        } else if (taskPriority == priority.length) {
          return;
        }
      } else {
        objTaskPriority = taskPriority;
        isTaskPriority = false;
      }
    }
    TaskList.add({
      "taskTitle": objTaskTitle,
      "taskDueDate": objTaskDueDate,
      "taskPriority": priority[objTaskPriority]
    });
    print("Task Successfully added");
    print("Task Title: ${TaskList.last["taskTitle"]}");
    print("Due Date: ${TaskList.last["taskDueDate"]}");
    print("Priority: ${TaskList.last["taskPriority"]}");
    isNewTask = false;
  }
}

viewTask() {
  if (TaskList.isEmpty) {
    print("There is no data to show");
  } else {
    print("Here is your task list:\n--------------");
    for (var i = 0; i < TaskList.length; i++) {
      print("Task ${i + 1}:");
      print("Task Title: ${TaskList[i]["taskTitle"]}");
      print("Due Date: ${TaskList[i]["taskDueDate"]}");
      print("Priority: ${TaskList[i]["taskPriority"]}");
      print("--------------");
    }
  }
}

updateTask() {
  if (TaskList.isEmpty) {
    print("There is no data to update");
  } else {
    print("Which task u want to edit");
    for (var i = 0; i < TaskList.length; i++) {
      print("$i : ${TaskList[i]["taskTitle"]}\n");
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
        bool isNewUpdateTask = true;
        while (isNewUpdateTask) {
          print("Enter ${TaskList.length} to go back");
          print("--------------");
          print("Task Title: ${TaskList[update]["taskTitle"]}");
          print("Due Date: ${TaskList[update]["taskDueDate"]}");
          print("Priority: ${TaskList[update]["taskPriority"]}");
          print("--------------");
          stdout.write("Enter here to update task title: ");
          String newUpdateTask = stdin.readLineSync() ?? "";
          if (newUpdateTask == TaskList.length.toString()) {
            return;
          } else if (newUpdateTask == "") {
            print("Please write something");
          } else if (!pattern.hasMatch(newUpdateTask)) {
            print("Enter Valid Text");
          } else {
            String oldValue = TaskList[update]["taskTitle"];
            TaskList[update]["taskTitle"] = newUpdateTask;
            print(
                "Task Title: $oldValue Successfully updated to ${TaskList[update]["taskTitle"]}");
            isNewUpdateTask = false;
            isUpdate = false;
          }
        }
      }
    }
  }
}

deleteTask() {
  if (TaskList.isEmpty) {
    print("There is no data to delete");
  } else {
    print("Which task u want to delete");
    for (var i = 0; i < TaskList.length; i++) {
      print("$i : ${TaskList[i]["taskTitle"]}\n");
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
          print("$i : ${TaskList[i]["taskTitle"]}\n");
        }
        stdout.write(
            "Enter ${TaskList.length} to go back\nChoose Correct Number 0 - ${TaskList.length - 1}: ");
      } else {
        String deletedTask = TaskList[delete]["taskTitle"];
        TaskList.removeWhere((e) => e == TaskList[delete]);
        print("Sucessfully deleted task: $deletedTask");
        isDelete = false;
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
      print("Welcome Back, $name1!");
      isRetry = false;
    } else {
      print("Progam Exited");
      isRetry = false;
    }
  }
}
