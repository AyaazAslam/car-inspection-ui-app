import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagra/screens/auth/log_in.dart';
import 'package:instagra/widgets/customfield.dart';
import 'package:page_transition/page_transition.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

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
                  height: 335,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 66,
                      ),
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
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Sign Up!",
                        style: GoogleFonts.acme(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          CustomField(
                            hintText: 'Enter your name',
                            prefixicon: Icon(
                              Icons.person,
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
                          SizedBox(
                            height: 15,
                          ),
                          CustomField(
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
                          SizedBox(
                            height: 15,
                          ),
                          CustomField(
                            hintText: 'Password',
                            prefixicon: Icon(
                              Icons.lock,
                            ),
                            sufixicon: Icon(
                              isPasswordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            obscureText: !isPasswordVisible,
                            onSuffixIconPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
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
                          SizedBox(
                            height: 15,
                          ),
                          CustomField(
                            hintText: 'Confirm Password',
                            prefixicon: Icon(
                              Icons.lock,
                            ),
                            sufixicon: Icon(
                              isConfirmPasswordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            obscureText: !isConfirmPasswordVisible,
                            onSuffixIconPressed: () {
                              setState(() {
                                isConfirmPasswordVisible =
                                    !isConfirmPasswordVisible;
                              });
                            },
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
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  duration: Duration(milliseconds: 900),
                                  child: LoginScreen(),
                                  type: PageTransitionType.bottomToTop,
                                ),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 60,
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
                                "Sign Up",
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  textStyle: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                                alignment: Alignment.center,
                                height: 60,
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/google.jpg'))),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Sign in with Google',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        duration: Duration(milliseconds: 900),
                                        child: LoginScreen(),
                                        type: PageTransitionType.bottomToTop,
                                      ),
                                    );
                                  },
                                  child: Text(
                                    " Login",
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
