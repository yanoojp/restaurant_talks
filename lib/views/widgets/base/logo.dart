import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/variables.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      appTitle,
      style: GoogleFonts.pacifico(
        color: whiteColor,
        fontSize: appTitleFontSize,
      ),
    );
  }
}
