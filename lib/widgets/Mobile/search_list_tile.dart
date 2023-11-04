import 'package:flutter/material.dart';
import 'package:student_management_web/widgets/Mobile/search_details_mobile.dart';

class SearchListTileMobileWidget extends StatefulWidget {
  const SearchListTileMobileWidget({
    super.key,
    required this.results,
    required this.index,
  });

  final List results;
  final int index;

  @override
  State<SearchListTileMobileWidget> createState() =>
      _SearchListTileMobileWidgetState();
}

class _SearchListTileMobileWidgetState
    extends State<SearchListTileMobileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        // widget.results[widget.index]['path']
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/studentmanagemnetweb.appspot.com/o/StudentImages%2F${widget.results[widget.index]['path']}?alt=media&token=2df4a60b-1f89-4710-8d1a-2bd00e4380b9'),
        ),
        onTap: () {
          Navigator.of(context).pop();
          showDialog(
              context: context,
              builder: (context) => SearchDetailsMobileWidget(
                    index: widget.index,
                    results: widget.results,
                  ));
        },
        title: Text(widget.results[widget.index]['name']),
      ),
    );
  }
}
