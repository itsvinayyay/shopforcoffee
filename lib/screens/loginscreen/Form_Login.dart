import 'package:flutter/material.dart';
import 'package:shopforcoffee/screens/LoginSuccessScreen/Login_Success.dart';
import 'package:shopforcoffee/screens/SignUpScreen/SignUp_Screen.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'Form_errors.dart';
import 'package:shopforcoffee/screens/TourScreen/tourbody_component2.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/screens/ForgotpassScreen/Forget_Screen.dart';

class Buildform extends StatefulWidget {
  @override
  State<Buildform> createState() => _BuildformState();
}

class _BuildformState extends State<Buildform> {
  final _formkey = GlobalKey<FormState>();

  final List<String> Errors = [];
  late String? Email;
  late String? Password;
  bool? check = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          //For email
          buildEmailFormField(), //To create Email form field
          SizedBox(
            height: getproportionatescreenheight(20),
          ),
          buildPasswordFormField(), //To create Password form field
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Checkbox(
                value: check,
                activeColor: Colors.brown,
                onChanged: (value) {
                  setState(() {
                    check = value;
                  });
                },
              ),
              Text(
                "Remember me",
                style: kimptext,
              ),
              SizedBox(
                width: getproportionatescreenwidth(120),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ForgotScreen.id);
                },
                child: Text(
                  "Forgot Password",
                  style: kimptext.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          FormErrors(Errors: Errors),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/4.png",
                          scale: 25,
                        ),
                        SizedBox(
                          width: getproportionatescreenwidth(10),
                        ),
                        Image.asset(
                          "assets/images/5.png",
                          scale: 25,
                        ),
                        SizedBox(
                          width: getproportionatescreenwidth(10),
                        ),
                        Image.asset(
                          "assets/images/6.png",
                          scale: 25,
                        ),
                      ],
                    ),
                    Text(
                      "Sign In using the your\n social accounts.",
                      textAlign: TextAlign.center,
                      style: kimptext,
                    ),
                    Text(
                      "Or",
                      style: kimptext,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, SignUp.id);
                      },
                      child: Text(
                        "Sign Up",
                        style: kimptext.copyWith(
                          decoration: TextDecoration.underline,
                          color: Colors.brown.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Commonbutton("Continue", () {
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState!.save();
                  if (Errors.isEmpty) {
                    Navigator.pushNamed(context, LoginSuccess.id);
                  }
                }
              }),
            ],
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
        onSaved: (newvalue) {
          Email = newvalue;
        },
        onChanged: (value) {
          if (value.isNotEmpty && Errors.contains(kemailnullerror)) {
            setState(() {
              Errors.remove(kemailnullerror);
            });
          } else if (value.contains("@") && Errors.contains(kvalidemailerror)) {
            setState(() {
              Errors.remove(kvalidemailerror);
            });
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !Errors.contains(kemailnullerror)) {
            setState(() {
              Errors.add(kemailnullerror);
            });
          } else if (value != null &&
              !value.contains("@") &&
              !Errors.contains(kvalidemailerror) &&
              !Errors.contains(kemailnullerror)) {
            setState(() {
              Errors.add(kvalidemailerror);
            });
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontFamily: "OpenSans",
          fontSize: 15,
        ),
        decoration: buildInputDecoration(
            "Email", "Enter your email here!", Icons.mail));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        onSaved: (newvalue) {
          Password = newvalue;
        },
        onChanged: (value) {
          if (value != null &&
              value.isNotEmpty &&
              Errors.contains(knullpasserror)) {
            setState(() {
              Errors.remove(knullpasserror);
            });
          } else if (value != null &&
              value.length > 6 &&
              Errors.contains(kshortpass)) {
            setState(() {
              Errors.remove(kshortpass);
            });
          }
          return null;
        },
        validator: (value) {
          if (value != null &&
              value.isEmpty &&
              !Errors.contains(knullpasserror)) {
            setState(() {
              Errors.add(knullpasserror);
            });
          } else if (value != null &&
              value.length < 6 &&
              !Errors.contains(kshortpass) &&
              !Errors.contains(knullpasserror)) {
            setState(() {
              Errors.add(kshortpass);
            });
          }
          return null;
        },
        obscureText: true,
        style: TextStyle(
          fontFamily: "OpenSans",
          fontSize: 15,
        ),
        decoration: buildInputDecoration(
            "Password", "Enter your password here!", Icons.password));
  }
}
