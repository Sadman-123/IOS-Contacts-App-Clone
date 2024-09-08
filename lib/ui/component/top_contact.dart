import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lox/controller/home_controller.dart';
HomeController home=Get.put(HomeController());
class TopContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Obx(()=>Container(
      margin: EdgeInsets.all(10),
      height: mdh * 0.24,  // Give explicit height to the container
      child: home.arr.isEmpty?CupertinoActivityIndicator(radius: mdw*0.05,):ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: home.arr.length,
        itemBuilder: (context, index) {
          return _TopCards(arr: home.arr,num: index,);  // Corrected the class name to PascalCase
        },
      ),
    ));
  }
}

class _TopCards extends StatelessWidget {
  dynamic arr=[];
  int num=0;
  _TopCards({required this.arr,required this.num});
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(10),
      height: mdh * 0.224,
      width: mdw * 0.415,
      decoration: BoxDecoration(
        color: CupertinoColors.secondarySystemBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(()=>CircleAvatar(
              backgroundImage: NetworkImage("${arr[num]['picture']['medium']}"),
              radius: 34,
            ),),
            Obx(()=>Text(
              "${arr[num]['name']['first']}",
              style: TextStyle(fontSize: mdw * 0.07),
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIcon(CupertinoIcons.phone_fill, CupertinoColors.activeGreen, mdh, mdw),
                _buildIcon(CupertinoIcons.video_camera_solid, CupertinoColors.black, mdh, mdw),
                _buildIcon(CupertinoIcons.mail_solid, CupertinoColors.black, mdh, mdw),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(IconData iconData, Color iconColor, double mdh, double mdw) {
    return Container(
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 0.2),
      ),
      height: mdh * 0.043,
      width: mdw * 0.09,
      child: Icon(iconData, color: iconColor),
    );
  }
}


class _topCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(10),
      height: mdh * 0.224,
      width: mdw * 0.415,
    decoration: BoxDecoration(
    color: CupertinoColors.secondarySystemBackground,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
              radius: 34,
            ),
            Text("sadman",style: TextStyle(fontSize: mdw*0.07),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(child: Icon(CupertinoIcons.phone_fill,color: CupertinoColors.activeGreen,),decoration: BoxDecoration(color: CupertinoColors.white,borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.2)),height: mdh*0.04,width: mdw*0.09,),
                Container(child: Icon(CupertinoIcons.video_camera_solid),decoration: BoxDecoration(color: CupertinoColors.white,borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.2)),height: mdh*0.04,width: mdw*0.09,),
                Container(child: Icon(CupertinoIcons.mail_solid),decoration: BoxDecoration(color: CupertinoColors.white,borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.2)),height: mdh*0.04,width: mdw*0.09,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
