import 'package:flutter/material.dart';
import 'profile_container.dart';
import 'button_container.dart';

const divider = Divider(
  height: 20,
  color: Colors.white,
  thickness: 1,
  indent: 80,
  endIndent: 80,
);

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.teal[400],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 100),
                      ProfileContainer(),
                      divider,
                      ButtonContainer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
