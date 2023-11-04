import 'package:flutter/material.dart';
import 'package:student_management_web/functions/functions.dart';
import 'package:student_management_web/screens/edit_student.dart';
import 'package:student_management_web/screens/mobile/studentcard.dart';

class ListTileActionIconWidgets extends StatelessWidget {
  const ListTileActionIconWidgets({
    super.key,
    required this.widget,
  });

  final StudentCardMobile widget;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        IconButton(
            hoverColor: Colors.blue,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => EditStudentDialog(
                  student: widget.document,
                ),
              );
            },
            icon: const Icon(Icons.edit)),
        IconButton(
            hoverColor: Colors.red,
            onPressed: () {
              FirebaseFunctions.deleteStudent(docId: widget.document.id);
              FirebaseFunctions.deleteImageFromStorage(
                  widget.student[widget.index]['path']);
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.red,
                  width: 400,
                  content: Text('Student Removed Succesfully'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  )));
            },
            icon: const Icon(Icons.delete)),
      ],
    );
  }
}
