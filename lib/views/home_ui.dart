// ignore_for_file: unused_import, sort_child_properties_last, prefer_const_constructors

import 'package:build_awesome_app/views/login_ui.dart';
import 'package:build_awesome_app/views/signup_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.185,
              ),
              Image.asset(
                'assets/images/logo.png',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.085,
              ),
              Text(
                'Build Awesome Apps',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.075,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Let\'s put your creativity on the',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: Colors.blue[800],
                ),
              ),
              Text(
                'development highway',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginUI(),
                          ),
                        );
                      },
                      child: Text(
                        'LOGIN',
                        style: GoogleFonts.itim(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black,
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.4,
                          MediaQuery.of(context).size.height * 0.085,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupUI(),
                        ),
                      );
                    },
                    child: Text(
                      'SIGNUP',
                      style: GoogleFonts.itim(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      foregroundColor: Colors.white,
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.4,
                        MediaQuery.of(context).size.height * 0.085,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
