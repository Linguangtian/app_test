import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*import 'routes/Routes.dart';*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  initialRoute: '/', //初始化的时候加载的路由
        //配置命名路由
       // onGenerateRoute: onGenerateRoute,//将抽离出去的路由传值规范赋值给左边，而不是执行，记住喔！
        title: 'test',
        routes: {
          "/":(context)=> HomePage(),
         /* "menu":(context)=>MenuPage(title: "xxx",)*/
        },
        //路由表中无注册，自动路由
        onGenerateRoute: (RouteSettings s){
            print(s.name);
            switch(s.name){
              case "menu":
                return MaterialPageRoute(builder: (context){
                    return MenuPage(title: "xx");
                },settings: s);
                break;
              default:
            }
          },

        );
  }
}

//首页
class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
   return Scaffold(
        appBar: AppBar(title: Text('test')),
        body: GridView.count(
          padding: const EdgeInsets.all(10.0),
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          crossAxisCount: 3,
          children: [
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('跳转到商品页面'),
              onPressed: () {
                //监听器
                //使用路由名称跳转
                Navigator.of(context).pushNamed("menu",arguments: 'aaa').then((value) => print(value));
                //命名路由跳转
              /*  Navigator.of(context)
                    .push(MaterialPageRoute(
                      //实例化 + 必传参数
                      builder: (context){ return MenuPage(title: "title参数");  },
                      //传入其他参数  可以把111替换 {"name":"xxx"}
                      settings: RouteSettings( name:"menu", arguments: "11111111",),
                      maintainState: false,
                    )
                  ).then((value) => print(value));*/
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
            ),
            new Image.network(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbj-yuantu.fotomore.com%2Fcreative%2Fvcg%2Fnew%2FVCG211359631262.jpg%3FExpires%3D1643621486%26OSSAccessKeyId%3DLTAI2pb9T0vkLPEC%26Signature%3D9U4Yy4ohZHnVaGzyutKSXosROY0%253D%26x-oss-process%3Dimage%252Fauto-orient%252C0%252Fsaveexif%252C1%252Fresize%252Cm_lfit%252Ch_1200%252Cw_1200%252Climit_1%252Fsharpen%252C100%252Fquality%252CQ_80%252Fwatermark%252Cg_se%252Cx_0%252Cy_0%252Cimage_d2F0ZXIvdmNnLXdhdGVyLTIwMDAucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLG1fbGZpdCxoXzE3MSx3XzE3MSxsaW1pdF8x%252F&refer=http%3A%2F%2Fbj-yuantu.fotomore.com&app=2002&size=f10000,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646903241&t=6405f303d70d69fd949fe460ed878f4b',
                fit: BoxFit.cover),
            new Image.network(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbj-yuantu.fotomore.com%2Fcreative%2Fvcg%2Fnew%2FVCG211359631262.jpg%3FExpires%3D1643621486%26OSSAccessKeyId%3DLTAI2pb9T0vkLPEC%26Signature%3D9U4Yy4ohZHnVaGzyutKSXosROY0%253D%26x-oss-process%3Dimage%252Fauto-orient%252C0%252Fsaveexif%252C1%252Fresize%252Cm_lfit%252Ch_1200%252Cw_1200%252Climit_1%252Fsharpen%252C100%252Fquality%252CQ_80%252Fwatermark%252Cg_se%252Cx_0%252Cy_0%252Cimage_d2F0ZXIvdmNnLXdhdGVyLTIwMDAucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLG1fbGZpdCxoXzE3MSx3XzE3MSxsaW1pdF8x%252F&refer=http%3A%2F%2Fbj-yuantu.fotomore.com&app=2002&size=f10000,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646903241&t=6405f303d70d69fd949fe460ed878f4b',
                fit: BoxFit.cover),
            new Image.network(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbj-yuantu.fotomore.com%2Fcreative%2Fvcg%2Fnew%2FVCG211359631262.jpg%3FExpires%3D1643621486%26OSSAccessKeyId%3DLTAI2pb9T0vkLPEC%26Signature%3D9U4Yy4ohZHnVaGzyutKSXosROY0%253D%26x-oss-process%3Dimage%252Fauto-orient%252C0%252Fsaveexif%252C1%252Fresize%252Cm_lfit%252Ch_1200%252Cw_1200%252Climit_1%252Fsharpen%252C100%252Fquality%252CQ_80%252Fwatermark%252Cg_se%252Cx_0%252Cy_0%252Cimage_d2F0ZXIvdmNnLXdhdGVyLTIwMDAucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLG1fbGZpdCxoXzE3MSx3XzE3MSxsaW1pdF8x%252F&refer=http%3A%2F%2Fbj-yuantu.fotomore.com&app=2002&size=f10000,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646903241&t=6405f303d70d69fd949fe460ed878f4b',
                fit: BoxFit.cover),
            new Image.network(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbj-yuantu.fotomore.com%2Fcreative%2Fvcg%2Fnew%2FVCG211359631262.jpg%3FExpires%3D1643621486%26OSSAccessKeyId%3DLTAI2pb9T0vkLPEC%26Signature%3D9U4Yy4ohZHnVaGzyutKSXosROY0%253D%26x-oss-process%3Dimage%252Fauto-orient%252C0%252Fsaveexif%252C1%252Fresize%252Cm_lfit%252Ch_1200%252Cw_1200%252Climit_1%252Fsharpen%252C100%252Fquality%252CQ_80%252Fwatermark%252Cg_se%252Cx_0%252Cy_0%252Cimage_d2F0ZXIvdmNnLXdhdGVyLTIwMDAucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLG1fbGZpdCxoXzE3MSx3XzE3MSxsaW1pdF8x%252F&refer=http%3A%2F%2Fbj-yuantu.fotomore.com&app=2002&size=f10000,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646903241&t=6405f303d70d69fd949fe460ed878f4b',
                fit: BoxFit.cover),
            new Image.network(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbj-yuantu.fotomore.com%2Fcreative%2Fvcg%2Fnew%2FVCG211359631262.jpg%3FExpires%3D1643621486%26OSSAccessKeyId%3DLTAI2pb9T0vkLPEC%26Signature%3D9U4Yy4ohZHnVaGzyutKSXosROY0%253D%26x-oss-process%3Dimage%252Fauto-orient%252C0%252Fsaveexif%252C1%252Fresize%252Cm_lfit%252Ch_1200%252Cw_1200%252Climit_1%252Fsharpen%252C100%252Fquality%252CQ_80%252Fwatermark%252Cg_se%252Cx_0%252Cy_0%252Cimage_d2F0ZXIvdmNnLXdhdGVyLTIwMDAucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLG1fbGZpdCxoXzE3MSx3XzE3MSxsaW1pdF8x%252F&refer=http%3A%2F%2Fbj-yuantu.fotomore.com&app=2002&size=f10000,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646903241&t=6405f303d70d69fd949fe460ed878f4b',
                fit: BoxFit.cover),
            new Image.network(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbj-yuantu.fotomore.com%2Fcreative%2Fvcg%2Fnew%2FVCG211359631262.jpg%3FExpires%3D1643621486%26OSSAccessKeyId%3DLTAI2pb9T0vkLPEC%26Signature%3D9U4Yy4ohZHnVaGzyutKSXosROY0%253D%26x-oss-process%3Dimage%252Fauto-orient%252C0%252Fsaveexif%252C1%252Fresize%252Cm_lfit%252Ch_1200%252Cw_1200%252Climit_1%252Fsharpen%252C100%252Fquality%252CQ_80%252Fwatermark%252Cg_se%252Cx_0%252Cy_0%252Cimage_d2F0ZXIvdmNnLXdhdGVyLTIwMDAucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLG1fbGZpdCxoXzE3MSx3XzE3MSxsaW1pdF8x%252F&refer=http%3A%2F%2Fbj-yuantu.fotomore.com&app=2002&size=f10000,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646903241&t=6405f303d70d69fd949fe460ed878f4b',
                fit: BoxFit.cover),
            new Image.network(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbj-yuantu.fotomore.com%2Fcreative%2Fvcg%2Fnew%2FVCG211359631262.jpg%3FExpires%3D1643621486%26OSSAccessKeyId%3DLTAI2pb9T0vkLPEC%26Signature%3D9U4Yy4ohZHnVaGzyutKSXosROY0%253D%26x-oss-process%3Dimage%252Fauto-orient%252C0%252Fsaveexif%252C1%252Fresize%252Cm_lfit%252Ch_1200%252Cw_1200%252Climit_1%252Fsharpen%252C100%252Fquality%252CQ_80%252Fwatermark%252Cg_se%252Cx_0%252Cy_0%252Cimage_d2F0ZXIvdmNnLXdhdGVyLTIwMDAucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLG1fbGZpdCxoXzE3MSx3XzE3MSxsaW1pdF8x%252F&refer=http%3A%2F%2Fbj-yuantu.fotomore.com&app=2002&size=f10000,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646903241&t=6405f303d70d69fd949fe460ed878f4b',
                fit: BoxFit.cover),
            new Image.network(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbj-yuantu.fotomore.com%2Fcreative%2Fvcg%2Fnew%2FVCG211359631262.jpg%3FExpires%3D1643621486%26OSSAccessKeyId%3DLTAI2pb9T0vkLPEC%26Signature%3D9U4Yy4ohZHnVaGzyutKSXosROY0%253D%26x-oss-process%3Dimage%252Fauto-orient%252C0%252Fsaveexif%252C1%252Fresize%252Cm_lfit%252Ch_1200%252Cw_1200%252Climit_1%252Fsharpen%252C100%252Fquality%252CQ_80%252Fwatermark%252Cg_se%252Cx_0%252Cy_0%252Cimage_d2F0ZXIvdmNnLXdhdGVyLTIwMDAucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLG1fbGZpdCxoXzE3MSx3XzE3MSxsaW1pdF8x%252F&refer=http%3A%2F%2Fbj-yuantu.fotomore.com&app=2002&size=f10000,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646903241&t=6405f303d70d69fd949fe460ed878f4b',
                fit: BoxFit.cover),
            new Image.network(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fbj-yuantu.fotomore.com%2Fcreative%2Fvcg%2Fnew%2FVCG211359631262.jpg%3FExpires%3D1643621486%26OSSAccessKeyId%3DLTAI2pb9T0vkLPEC%26Signature%3D9U4Yy4ohZHnVaGzyutKSXosROY0%253D%26x-oss-process%3Dimage%252Fauto-orient%252C0%252Fsaveexif%252C1%252Fresize%252Cm_lfit%252Ch_1200%252Cw_1200%252Climit_1%252Fsharpen%252C100%252Fquality%252CQ_80%252Fwatermark%252Cg_se%252Cx_0%252Cy_0%252Cimage_d2F0ZXIvdmNnLXdhdGVyLTIwMDAucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLG1fbGZpdCxoXzE3MSx3XzE3MSxsaW1pdF8x%252F&refer=http%3A%2F%2Fbj-yuantu.fotomore.com&app=2002&size=f10000,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646903241&t=6405f303d70d69fd949fe460ed878f4b',
                fit: BoxFit.cover),
          ],
        ));
  }

}

//菜单页面
class MenuPage extends StatelessWidget{
  //创建必传入的参数
  final String title;
  const MenuPage({Key? key,required this.title}) : super(key: key);
  //end  创建必传入的参数   required必传声明

  @override
  Widget build(BuildContext context){
    //接受其他参数
    dynamic arguments = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title:Text(title + " "+ arguments ),
      ),
      body: RaisedButton(
        onPressed: (){
          Navigator.of(context).pop("返回内容");
        },
        child: Text("返回")
      ),

    );

  }


}