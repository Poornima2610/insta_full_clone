import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/color_constants.dart';
import 'package:flutter_application_1/core/constants/image_constants.dart';
import 'package:flutter_application_1/global_widgets/custom_button.dart';

class SelectAccountScreen extends StatelessWidget {
  const SelectAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstants.apptextlogo),
            SizedBox(
              height: 20,
            ),
            Image.asset(ImageConstants.profilepic),
            SizedBox(
              height: 10,
            ),
            Text("jacob_w"),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Log in",
              onTap: () {
                print("successfully pressed");
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Switch Accounts",
              style: TextStyle(color: Color(0xff3797EF)),
            )
          ],
        ),
      ),
      bottomNavigationBar: 
      
      Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 0.1)),
          ),
          child: RichText(
             textAlign: TextAlign.center,
              text: TextSpan(
                  
                  text: "Dont have an account?",
                  style: TextStyle(
                      
                      color: ColorConstants.primaryblack.withOpacity(.7)),
                  children: [
                TextSpan(
                    text: "sign up",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold))
              ]))),
    );
  }
}
