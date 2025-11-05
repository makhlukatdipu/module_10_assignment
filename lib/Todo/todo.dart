import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class todo extends StatefulWidget {
  const todo({super.key});

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  TextEditingController taskController = TextEditingController();

  List<String> task = [];

  addTask() {
    if (taskController.text.isNotEmpty) {
      setState(() {
        task.add(taskController.text);
      });
      taskController.clear();
    }
  }

  deleteTask(int index) {
    showAdaptiveDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(Icons.delete, size: 50.sp),
        iconColor: Colors.red,
        title: Text(
          'Are You Sure!',
          style: TextStyle(
            color: Colors.red,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'No',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                task.removeAt(index);
              });
              Navigator.pop(context);
            },
            child: Text(
              'Yes',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  updateTask(String value, int index) {
    if (value.isNotEmpty) {
      setState(() {
        task[index] = value;
      });
    }
  }

  editTask(int index) {
    final controller = TextEditingController(text: task[index]);

    showAdaptiveDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Task'),
        content: TextField(controller: controller),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              updateTask(controller.text, index);
              Navigator.pop(context);
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo App'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(8.r),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskController,
                    decoration: InputDecoration(
                      hint: Text('Enter Task'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 8.h,
                    ),
                  ),
                  onPressed: () {
                    addTask();
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8.r),
              itemCount: task.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      task[index],
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing:
                        // Row(
                        //    mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     IconButton(
                        //       onPressed: () => editTask(index),
                        //       icon: Icon(Icons.edit),
                        //     ),
                        //     IconButton(
                        //       onPressed: () => deleteTask(index),
                        //       icon: Icon(Icons.delete),
                        //     ),
                        //   ],
                        // ),
                        PopupMenuButton(
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 'edit',
                              child: Row(
                                children: [
                                  Icon(Icons.edit, color: Colors.blue),
                                  SizedBox(width: 8.w),
                                  Text('Edit'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Row(
                                children: [
                                  Icon(Icons.delete, color: Colors.red),
                                  SizedBox(width: 8.w),
                                  Text('Delete'),
                                ],
                              ),
                            ),
                          ],
                          onSelected: (value) {
                            if (value == 'edit') {
                              editTask(index);
                            } else if (value == 'delete') {
                              deleteTask(index);
                            }
                          },
                        ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
