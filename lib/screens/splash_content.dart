import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/custom/hexColor.dart';
class SplashContent extends StatelessWidget {

  final String title1;
  final String title2;
  final String sub1;
  final String sub2;
  final String image;

  const SplashContent({Key? key, required this.title1, required this.title2, required this.sub1, required this.sub2, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Image.asset(
          image,
          height: 312,
          width: 312,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: Column(
              children: [
                Text( title1 ,style: GoogleFonts.inter(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color:  Color(hexColor("#212325"))
                ),),
                Text( title2,style: GoogleFonts.inter(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color:  Color(hexColor("#212325"))
                ),),
                Text( sub1,style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(hexColor("#91919F"))
                ),),
                Text(sub2,style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:  Color(hexColor("#91919F"))
                ),),
              ],
            ),
          ),
        )
      ],
    );
  }
}
