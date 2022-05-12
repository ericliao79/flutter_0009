import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  // flutter 已經完成 binding
  WidgetsFlutterBinding.ensureInitialized();

  // 鎖著畫面轉向
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SafeArea"),
      ),
      body: SafeArea(
        // SafeArea 安全區域
        // 可以設定上下左右
        top: true,
        bottom: true,
        left: true,
        right: true,

        // 如果有鍵盤等物件 是否會被覆蓋
        maintainBottomViewPadding: true,

        // padding 多寡
        minimum: const EdgeInsets.all(20),

        child: Container(
          color: Colors.purple,
        ),
      ),
    );
  }

}