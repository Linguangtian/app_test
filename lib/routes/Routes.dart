import '../pages/User.dart';
import '../pages/HttpDemo.dart';

import 'package:flutter/material.dart';

//配置路由
final  routes={                   //配置命名路由
  '/':(context)=>UserPage(),  //命名路由传值 arguments工具是必须的
  '/httpdemo':(context)=>HttpDemo(),
};

//固定写法
var oonGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name] as Function;
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
      MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};