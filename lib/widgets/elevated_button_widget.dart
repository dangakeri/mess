import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback callback;
  final Color labelColor;
  final Color buttonColor;
  const ElevatedButtonWidget({
    super.key,
    required this.callback,
    required this.label,
    required this.labelColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: labelColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
