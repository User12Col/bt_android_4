import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class IntendScreen extends StatelessWidget {
  const IntendScreen({Key? key}) : super(key: key);

  void openGoogleApp() async {
    const url = 'https://www.google.com';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Không thể mở $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intend'),
        centerTitle: false,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 50,
          color: Colors.blue,
          child: TextButton(
            onPressed: (){
              openGoogleApp();
            },
            child: Text('Click', style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
