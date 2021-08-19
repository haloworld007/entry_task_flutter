import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
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
                    child: null,
                  ),
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
