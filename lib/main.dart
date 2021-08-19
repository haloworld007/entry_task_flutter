import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Black Cat'),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  // 背景图片
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/bg.jpg'), fit: BoxFit.cover),
                  ),
                  child: Container(
                      // 背景色
                      color: Color(0xB38560A9),
                      // 使用ConstrainedBox将Column宽度指定为屏幕宽度
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minWidth: double.infinity),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 69, 0, 16),
                              child: Text(
                                'FIND THE MOST LOVED ACTIVITIES',
                                style: TextStyle(
                                    color: Color(0xFFD5EF7F), fontSize: 16),
                              ),
                            ),
                            Text('BLACK CAT',
                                style: TextStyle(
                                    color: Color(0xFFD5EF7F),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                            Padding(
                              padding: EdgeInsets.only(top: 37),
                              child: SvgPicture.asset('images/logo-cat.svg'),
                            )
                          ],
                        ),
                      )),
                ),
                flex: 1,
              ),
              GestureDetector(
                onTap: () {
                  debugger();
                  // 调用登录接口
                },
                child: Container(
                  color: Color(0xFFD5EF7F),
                  height: 64,
                  child: Center(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF453257)),
                    ),
                  ),
                ),
              )
            ],
          )),
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}
