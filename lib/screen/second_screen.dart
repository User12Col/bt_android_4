import 'package:bt_android4/widget/row_widget.dart';
import 'package:flutter/material.dart';
class SecondScreen extends StatefulWidget {
  String name;
  String email;
  String project;
  SecondScreen({Key? key, required this.name, required this.email, required this.project}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _projectController = TextEditingController();
  @override
  void initState() {
    super.initState();
    setState(() {
      _nameController.text = widget.name;
      _emailController.text = widget.email;
      _projectController.text = widget.project;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _projectController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RowWidget(text: 'Name', controller: _nameController),
          RowWidget(text: 'Email', controller: _emailController),
          RowWidget(text: 'Project', controller: _projectController),
          Container(
            width: 200,
            height: 50,
            color: Colors.blue,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Finish',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
