import 'package:fittech_app/screeens/home_bage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 80,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: MediaQuery.of(context).size.width * .2,
                            fontFamily: GoogleFonts.antic().fontFamily,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        FontAwesomeIcons.heartPulse,
                        color: Colors.teal,
                        size: MediaQuery.of(context).size.width * .2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 170,
                  ),
                  child: Text(
                    "HEALTH ABOVE ALL",
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: GoogleFonts.antic().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * .04,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextFormField(
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: GoogleFonts.antic().fontFamily,
                          fontWeight: FontWeight.bold,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            label: Text(
                              "Email/Username",
                              style: TextStyle(
                                color: Colors.white70,
                                fontFamily: GoogleFonts.antic().fontFamily,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: GoogleFonts.antic().fontFamily,
                          fontWeight: FontWeight.bold,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          label: Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.white70,
                              fontFamily: GoogleFonts.antic().fontFamily,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MaterialButton(
                        shape: StadiumBorder(),
                        color: Colors.teal,
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(HomeBage.routeName);
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 26, 26, 26),
                            fontFamily: GoogleFonts.antic().fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.teal,
                              fontFamily: GoogleFonts.antic().fontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 5),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Register !",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.teal,
                              fontFamily: GoogleFonts.antic().fontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
