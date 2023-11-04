import 'package:flutter/material.dart';

class ImageBuilderWidget extends StatefulWidget {
  final Map<dynamic, dynamic> thisItem;
  final Size size;
  const ImageBuilderWidget(
      {super.key, required this.thisItem, required this.size});

  @override
  State<ImageBuilderWidget> createState() => _ImageBuilderWidgetState();
}

class _ImageBuilderWidgetState extends State<ImageBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onDoubleTap: () => showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 280,
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/studentmanagemnetweb.appspot.com/o/StudentImages%2F${widget.thisItem['path']}?alt=media&token=2df4a60b-1f89-4710-8d1a-2bd00e4380b9',
                      height: widget.size.height,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close_rounded),
                    color: Colors.white,
                    iconSize: 40,
                  ),
                )
              ],
            ),
          ),
          child: Center(
            child: Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/studentmanagemnetweb.appspot.com/o/StudentImages%2F${widget.thisItem['path']}?alt=media&token=2df4a60b-1f89-4710-8d1a-2bd00e4380b9'),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
      ],
    );
  }
}
