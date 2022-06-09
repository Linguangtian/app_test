import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'routes/Routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/', //初始化的时候加载的路由
        //配置命名路由
       // onGenerateRoute: onGenerateRoute,//将抽离出去的路由传值规范赋值给左边，而不是执行，记住喔！
        title: 'test',
        //路由表中无注册，自动路由
        onGenerateRoute: oonGenerateRoute

    );
  }
}

