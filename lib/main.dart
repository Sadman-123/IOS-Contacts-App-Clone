import 'package:flutter/cupertino.dart';
import 'package:lox/ui/home.dart';
void main()
{
  runApp(Main());
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}