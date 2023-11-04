import 'package:flutter/material.dart';
import 'package:student_management_web/screens/mobile/studentcard.dart';

class StudentImageViewer extends StatelessWidget {
  const StudentImageViewer({
    super.key,
    required this.widget,
  });

  final StudentCardMobile widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Stack(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height - 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/studentmanagemnetweb.appspot.com/o/StudentImages%2F${widget.student[widget.index]['path']}?alt=media&token=2df4a60b-1f89-4710-8d1a-2bd00e4380b9'),
                      fit: BoxFit.fitHeight)),
            ),
          ),
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.cancel_outlined),
            color: Colors.white,
            iconSize: 40,
          )
        ],
      ),
    );
  }
}
