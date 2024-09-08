import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lox/ui/component/contact_details.dart';
import 'package:lox/ui/home.dart';
void main()
{
  runApp(Main());
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      debugShowCheckedModeBanner: false,
      home: ContactDetails(),
    );
  }
}