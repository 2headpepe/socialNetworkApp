import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/data/repositories/get/feedRepo.dart';
import 'package:untitled1/globals.dart' as globals;
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/ui/pages/feedPage.dart';
import 'package:untitled1/ui/widgets/circleImage.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key}) : super(key: key);

  late final String login;
  late final String password;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        color: globals.mainColor,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 13 / 926),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Registration",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: globals.secondColor,
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 28 * height / globals.height),
                child: CircleImage(
                    size: 116 / globals.width * width,
                    image:
                        "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg")),
            Padding(
                padding: EdgeInsets.only(top: 75 * height / globals.height),
                child: InputText(
                  onValueInput: (newLogin) {
                    login = newLogin;
                  },
                  fillColor: globals.theLightestColor,
                  hintText: "Login",
                )),
            Padding(
                padding: EdgeInsets.only(top: 11 * height / globals.height),
                child: InputText(
                  onValueInput: (newPassword) {
                    password = newPassword;
                  },
                  fillColor: globals.theLightestColor,
                  hintText: "Password",
                )),
            Padding(
              padding: EdgeInsets.only(top: 32 * height / globals.height),
              child: GestureDetector(
                child: Container(
                  height: 30 * height / globals.height,
                  width: 135 * width / globals.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        width: 1.0,
                      )),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Register",
                      style: GoogleFonts.antic(
                          color: globals.secondColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: (){
                  if(login!="" && password!="")
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedPage(feed: FeedRepo.getFeed())));
                    }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputText extends StatefulWidget {
  late final ValueChanged<String> onValueInput;

  late final String hintText;
  late final Color fillColor;

  InputText(
      {Key? key,
      required this.hintText,
      required this.fillColor,
      required this.onValueInput})
      : super(key: key);

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 48 * height / globals.height,
      width: 408 * width / globals.width,
      child: TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          fillColor: widget.fillColor,
          filled: true,
          hintText: widget.hintText,
        ),

        controller: _controller,
        onSubmitted: (String value) {
          widget.onValueInput(value);
        },
      ),
    );
  }
}
