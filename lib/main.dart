import 'package:flutter/material.dart';
import 'package:pageview_flutter_app/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


ThemeData buildThemeData() {
  final baseTheme = ThemeData.light();

  return baseTheme.copyWith(
      //顶部导航栏状态栏颜色（ToolBar,Tabbar等）
      primaryColor: kPrimaryColor,
      primaryColorDark: kPrimaryDark,//primaryColor的较深版本
      primaryColorLight: kPrimaryLight,//primaryColor的较浅版本

      accentColor: kSecondaryColor,//前景色(按钮、文本、覆盖边缘效果等)
      bottomAppBarColor: kSecondaryDark,////设置底部导航的背景色
      buttonColor: kSecondaryLight,//Material中RaisedButtons使用的默认填充色。
      //用于渲染Slider的颜色和形状。
      sliderTheme: SliderThemeData.fromPrimaryColors(
        primaryColor: kPrimaryColor,
        primaryColorDark: kPrimaryDark,
        primaryColorLight: kPrimaryLight,
        valueIndicatorTextStyle: TextStyle(),//提示进度的气泡文本的颜色
      )
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _buildImage(String imageFile){
    return Container(
      alignment: Alignment.topCenter,
      child: new Image.asset(imageFile),
    );
  }

  Widget _buildBody(){
    return PageView(
      children: <Widget>[
        _buildImage("assets/1.jpg"),
        _buildImage("assets/2.jpg"),
        _buildImage("assets/3.jpg"),
        _buildImage("assets/4.jpg"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildBody(),
    );
  }
}
