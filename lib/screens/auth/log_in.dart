import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagra/screens/home/main_page.dart';
import 'package:instagra/screens/auth/sign_up.dart';
import 'package:instagra/widgets/customfield.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 415,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: 330,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white,
                            Colors.white,
                          ],
                          tileMode: TileMode.mirror,
                        ).createShader(bounds),
                        child: Text(
                          "EYES ON RIDES",
                          style: GoogleFonts.acme(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: CustomField(
                              hintText: 'Enter your email',
                              prefixicon: Icon(
                                Icons.mail,
                              ),
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: 50.0,
                              fillColor: true,
                              fontSize: 18.0,
                              focusedBorderColor: Colors.indigo,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20.0, left: 20),
                            child: CustomField(
                              obscureText: !ischeck,
                              onSuffixIconPressed: () {
                                setState(() {
                                  ischeck = !ischeck;
                                });
                              },
                              hintText: 'Enter your Password',
                              prefixicon: Icon(
                                Icons.lock,
                              ),
                              sufixicon: Icon(
                                ischeck
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: 50.0,
                              fillColor: true,
                              fontSize: 18.0,
                              focusedBorderColor: Colors.indigo,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0, top: 10),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Forgot Password?",
                                style: GoogleFonts.aBeeZee(
                                  textStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 25),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      duration: Duration(milliseconds: 900),
                                      child: HomeScreen(),
                                      childCurrent: HomeScreen(),
                                      type: PageTransitionType.bottomToTop));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 60,
                              width: 370,
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Text(
                                "Login",
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  textStyle: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 58),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      duration: Duration(milliseconds: 900),
                                      child: SignupScreen(),
                                      type: PageTransitionType.bottomToTop,
                                    ),
                                  );
                                },
                                child: Text(
                                  " Sign Up",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
