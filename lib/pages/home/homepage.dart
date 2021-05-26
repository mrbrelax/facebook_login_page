import 'package:facebook_loginpage/components/card_login_page.dart';
import 'package:facebook_loginpage/components/responsive_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F2F5),
      body: SingleChildScrollView(
        child: ResponsiveWidget(
          desktop: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'facebook',
                    style: GoogleFonts.roboto(
                      fontSize: 72.0,
                      color: Color(0xff1877F2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Facebook helps you connect and share \nwith the people in your life',
                    style: GoogleFonts.roboto(
                      fontSize: 28.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 150.0),
                  buildCard(),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Create a page',
                              style: GoogleFonts.roboto(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                      Text(
                        ' for a celebrity, band or business.',
                        style: GoogleFonts.roboto(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.0),
                ],
              ),
            ],
          ),
          mobile: SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20.0),
                  Text(
                    'facebook',
                    style: GoogleFonts.roboto(
                      fontSize: 72.0,
                      color: Color(0xff1877F2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Facebook helps you connect and \nshare with the people in your life.',
                    style: GoogleFonts.roboto(
                      fontSize: 28.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  buildCard(),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Create a page',
                              style: GoogleFonts.roboto(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                      Text(
                        ' for a celebrity, band or business.',
                        style: GoogleFonts.roboto(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
