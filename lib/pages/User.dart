import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('用户中心2'),
      ),
      body:GridView.count(
        crossAxisCount: 1,
        children: [
          RaisedButton(
            child: Text('跳转到搜索页面'),
            onPressed: () {
              //监听器
              Navigator.of(context).pushNamed('/httpdemo').then((value) => print(value));

            },
          )
        ]
      )
    );
  }
}
