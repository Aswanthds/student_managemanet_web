import 'package:flutter/material.dart';
import 'package:student_management_web/screens/add_student_dialog.dart';
import 'package:student_management_web/widgets/Web/search_widget.dart';

TextEditingController searchController = TextEditingController();

class NavBarWeb extends StatefulWidget {
  const NavBarWeb({
    super.key,
    required this.title,
    required this.context,
  });

  final String title;
  final BuildContext context;

  @override
  State<NavBarWeb> createState() => _NavBarWebState();
}

class _NavBarWebState extends State<NavBarWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              style: BorderStyle.solid, color: Colors.black.withOpacity(0.3))),
      child: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 30, top: 10),
          child: Text(
            widget.title,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              height: 50,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const AddStudentDialog(),
                  );
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                label: const Text(
                  'Add a student',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                showGeneralDialog(
                  context: context,
                  barrierColor: Colors.black54,
                  barrierDismissible: true,
                  barrierLabel: 'Label',
                  pageBuilder: (_, __, ___) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        color: Colors.blue,
                        child: const SearchResults(),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.search)),
        ],
      ),
    );
  }
}
