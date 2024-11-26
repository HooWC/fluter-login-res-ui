import 'package:flutter/material.dart';
import 'package:lrui/core/colors.dart';
import 'package:lrui/core/space.dart';
import 'package:lrui/core/text_style.dart';
import 'package:lrui/data/demo.dart';
import 'package:lrui/page/login_page.dart';
import 'package:lrui/widget/main_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [

          Container(
            height: height,
            color: blackBG,
            child: Image.asset(
              'assets/image/92.jpg', // 图片路径
              height: height,
              fit: BoxFit.cover, // 图片填满容器
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter, // 子组件对齐在底部居中
            child: Container( // 这是渐变容器
              height: height / 3, // 占屏幕高度的三分之一
              width: double.infinity, // 宽度为屏幕宽度

              decoration: BoxDecoration(
                gradient: LinearGradient( // 使用线性渐变
                  colors: gradient, // 渐变颜色数组
                  begin: Alignment.bottomCenter, // 从底部开始
                  end: Alignment.topCenter, // 渐变到顶部
                ),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'abda',
                        style: headline,
                      ),
                      TextSpan(
                        text: '.',
                        style: headlineDot,
                      ),
                    ]),
                  ),

                  SpaceVH(height: 20),
                  Text(
                    splashText,
                    textAlign: TextAlign.center,
                    style: headline2,
                  ),

                  Mainbutton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => LoginPage())); // 跳转到登录页
                    },
                    btnColor: blueButton, // 按钮颜色
                    text: 'Get Started', // 按钮文字
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
