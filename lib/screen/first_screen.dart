import 'package:bt_android4/widget/row_widget.dart';
import 'package:bt_android4/screen/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _projectController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
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
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondScreen(
                        name: _nameController.text,
                        email: _emailController.text,
                        project: _projectController.text)));
              },
              child: Text(
                'View Contact',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
