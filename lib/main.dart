import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lox/ui/home.dart';
void main()
{
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => Main(),
    ),
  );
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}