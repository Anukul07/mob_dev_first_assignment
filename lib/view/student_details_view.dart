import 'package:first_assignment/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class StudentDetailsView extends StatefulWidget {
  const StudentDetailsView({super.key});

  @override
  State<StudentDetailsView> createState() => _StudentDetailsViewState();
}

class _StudentDetailsViewState extends State<StudentDetailsView> {
  final _gap = const SizedBox(
    height: 8,
  );
  final items = [
    const DropdownMenuItem(value: 'Kathmandu', child: Text('Kathmandu')),
    const DropdownMenuItem(value: 'Pokhara', child: Text('Pokhara')),
    const DropdownMenuItem(value: 'Chitwan', child: Text('Chitwan')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Enter fname", border: OutlineInputBorder()),
            ),
            _gap,
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Enter fname", border: OutlineInputBorder()),
            ),
            _gap,
            DropdownButtonFormField(
              icon: const Icon(Icons.arrow_downward),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Select City"),
              items: items,
              onChanged: (value) {},
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Add Student")),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    showMySnackBar(context: context, message: "Success");
                  },
                  child: const Text("View Students")),
            ),
          ],
        ),
      ),
    );
  }
}
