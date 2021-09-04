import 'package:flutter/material.dart';
import 'package:splashscreen/custom/hexColor.dart';
import 'package:splashscreen/model/SplashData.dart';
import 'package:splashscreen/screens/splash_content.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value){
                    setState(() {
                      currentPage = value;
                    });
                  },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                          title1: splashData[index]['title1'],
                          title2: splashData[index]['title2'],
                          sub1: splashData[index]['sub1'],
                          sub2: splashData[index]['sub2'],
                          image: splashData[index]['image'],
                        )),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                        (index) => buildDot(index: index),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(microseconds: 15000),
      margin: EdgeInsets.all(5),
      height: 16,
      width: 16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: currentPage == index ? Color(hexColor("#7F3DFF")) :  Color(hexColor("#EEE5FF"))
      ),
    );
  }

}


