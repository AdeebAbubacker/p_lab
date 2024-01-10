import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double kiconsize = 25;
const kCarddateTextStyle =
    TextStyle(color: Color.fromARGB(255, 101, 100, 100), fontSize: 12);

final kwhiteTextColorTitle =
    GoogleFonts.inter(color: Colors.white, fontSize: 16);
const kwhiteTextColor = TextStyle(color: Colors.white);
const kwhiteButtonTextColor =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w400);

final kCardFilterTextStyle = GoogleFonts.inter(
    color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w800);
final kCardContentStyle =
    GoogleFonts.inter(color: const Color(0xFF72809E), fontSize: 13);
final kFormContentStyle = GoogleFonts.karla(
  textStyle: const TextStyle(
    color: Color(0xFF72809E),
    fontSize: 16.0,
  ),
);
final kstepperSmallStyle = GoogleFonts.inter(
    color: const Color.fromARGB(255, 156, 157, 159), fontSize: 12);
final kCardContentSmallStyle =
    GoogleFonts.inter(color: const Color(0xFF72809E), fontSize: 10);

final cardbelowitems = GoogleFonts.inter(
    color: const Color(0xFF72809E), fontSize: 14, textStyle: const TextStyle());

//---------------------------------------------------------------------------

final admindashtitle = GoogleFonts.koHo(color: Colors.white);
final admincontent = GoogleFonts.koHo(fontSize: 15);
double iconsize = 68;
const studenticonColor = Color.fromARGB(255, 227, 27, 80);
// ignore: constant_identifier_names
const TopGradeiconColor = Color.fromARGB(255, 54, 244, 95);
// ignore: constant_identifier_names
const ReciptenticonColor = Colors.blue;
const fieldiconColor = Color.fromARGB(255, 246, 157, 15);
const applicationticonColor = Color.fromARGB(255, 62, 24, 150);

// --------------------- Family Card design -------------------------------------------------------

// const kfamiltTitleTextColor = TextStyle(
//     fontSize: 15,
//     color: Color.fromARGB(255, 11, 93, 209),
//     fontWeight: FontWeight.w500);

const kfamiltTitleTextColor = TextStyle(
    fontSize: 15, color: Color(0XFF542a92), fontWeight: FontWeight.w500);
// --------------------- Home Card design -------------------------------------------------------

// const kfamiltTitleTextColor = TextStyle(
//     fontSize: 15,
//     color: Color.fromARGB(255, 11, 93, 209),
//     fontWeight: FontWeight.w500);
const homeContentStyle =
    TextStyle(fontSize: 13, color: Color.fromARGB(213, 91, 89, 89));
const checkboxOptionStyle =
    TextStyle(fontSize: 11, color: Color.fromARGB(197, 105, 104, 104));

// -------------------- padding --------------------------------------------------------------

const kPadding14 = Padding(padding: EdgeInsets.only(left: 14));

// ignore: camel_case_types
class kpadding14 extends StatelessWidget {
  final Widget child;
  const kpadding14({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 14), child: child);
  }
}
