import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTileComponent extends StatelessWidget {
  const ListTileComponent({
    required this.onTap,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.icon,
  });
  final Function()? onTap;
  final String title;
  final String subTitle;
  final String image;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: Color(0xFFF2F2F2),
        ),
      ),
      subtitle: Text(
        subTitle,
        style: GoogleFonts.poppins(color: Colors.white70),
      ),
      trailing: Icon(
        icon,
        color: Colors.white70,
      ),
      isThreeLine: true,
      onTap: onTap,
    );
  }
}
