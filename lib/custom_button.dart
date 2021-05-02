import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.label, this.icon, this.onPressed});

  final String label;
  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.teal[700],
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              icon,
              SizedBox(width: 20),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
