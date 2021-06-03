import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BadgeComponent extends StatelessWidget {
  const BadgeComponent({
    required this.onPressed,
    required this.text,
  });
  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(
              color: Colors.white,
              width: 5.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
        backgroundColor:
            MaterialStateColor.resolveWith((states) => Colors.white10),
        elevation: MaterialStateProperty.all(0),
        overlayColor:
            MaterialStateColor.resolveWith((states) => Colors.white12),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0)),
      ),
    );
  }
}
