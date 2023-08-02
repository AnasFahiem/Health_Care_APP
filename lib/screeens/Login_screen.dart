import 'package:fittech_app/screeens/home_bage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routeName = '/login-screen';

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
                        "Fittech",
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: MediaQuery.of(context).size.width * .2,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
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
                  padding: const EdgeInsets.only(
                    left: 170,
                  ),
                  child: Text(
                    "HEALTH ABOVE ALL",
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * .04,
                    ),
                  ),
                ),
                const SizedBox(
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
                            border: const OutlineInputBorder(
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
                      const SizedBox(
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
                          border: const OutlineInputBorder(
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
                      const SizedBox(
                        height: 40,
                      ),
                      MaterialButton(
                        shape: const StadiumBorder(),
                        color: Colors.teal,
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(HomeBage.routeName);
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 26, 26, 26),
                            fontFamily: GoogleFonts.antic().fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
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
                  padding: const EdgeInsets.only(top: 90, left: 5),
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
