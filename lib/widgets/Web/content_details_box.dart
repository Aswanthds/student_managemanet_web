import 'package:flutter/material.dart';
import 'package:student_management_web/widgets/Web/text_deatisl_widget.dart';

class ContentDetailsBox extends StatefulWidget {
  final Map<dynamic, dynamic> thisItem;
  final Size size;
  const ContentDetailsBox(
      {super.key, required this.thisItem, required this.size});

  @override
  State<ContentDetailsBox> createState() => _ContentDetailsBoxState();
}

class _ContentDetailsBoxState extends State<ContentDetailsBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 500,
              child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/studentmanagemnetweb.appspot.com/o/StudentImages%2F${widget.thisItem['path']}?alt=media&token=2df4a60b-1f89-4710-8d1a-2bd00e4380b9'),
            ),
          ),
          TextDetailsWidget(thisItem: widget.thisItem),
        ],
      ),
    );
  }
}
