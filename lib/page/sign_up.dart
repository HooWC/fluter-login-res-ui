import 'package:flutter/material.dart';
import 'package:lrui/core/colors.dart';
import 'package:lrui/core/space.dart';
import 'package:lrui/core/text_style.dart';
import 'package:lrui/widget/main_button.dart';
import 'package:lrui/widget/text_fild.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPh = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView( // 让页面可以滚动
          child: Column(
            children: [
              SpaceVH(height: 50.0),
              Text(
                'Create new account',
                style: headline1,
              ),
              SpaceVH(height: 10.0),
              Text(
                'Please fill in the form to continue',
                style: headline3,
              ),
              SpaceVH(height: 60.0),

              // 输入框部分
              textFild(
                controller: userName,
                image: 'user.svg',
                keyBordType: TextInputType.name,
                hintTxt: 'Full Name',
              ),
              SpaceVH(height: 20.0),
              textFild(
                controller: userEmail,
                keyBordType: TextInputType.emailAddress,
                image: 'user.svg',
                hintTxt: 'Email Address',
              ),
              SpaceVH(height: 20.0),
              textFild(
                controller: userPh,
                image: 'user.svg',
                keyBordType: TextInputType.phone,
                hintTxt: 'Phone Number',
              ),
              SpaceVH(height: 20.0),
              textFild(
                controller: userPass,
                isObs: true, // 密码输入框
                image: 'hide.svg',
                hintTxt: 'Password',
              ),
              SpaceVH(height: 80.0),

              // 注册按钮
              Mainbutton(
                onTap: () {
                  // 注册逻辑
                },
                text: 'Sign Up',
                btnColor: blueButton,
              ),
              SpaceVH(height: 20.0),

              // 返回登录按钮
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Have an account? ',
                      style: headline.copyWith(fontSize: 14.0),
                    ),
                    TextSpan(
                      text: ' Sign In',
                      style: headlineDot.copyWith(fontSize: 14.0),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
