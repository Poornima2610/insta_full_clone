import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.buttonColor = Colors.blue,
    this.haveBorder = false,
    this.onTap,
  }) : super(key: key);

  final String text;
  final Color buttonColor;
  final bool haveBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(10),
            border: haveBorder ? Border.all(color: Colors.black) : null,
          ),
          child: TextButton(
            onPressed: onTap,
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
