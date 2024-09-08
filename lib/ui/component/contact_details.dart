import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lox/controller/home_controller.dart';
class ContactDetails extends StatelessWidget{
  dynamic arr=[];
  int ind=0;
  ContactDetails({required this.arr,required this.ind});
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
      ),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(mdw*0.005),
                  height: mdh*0.21,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Hero(tag: "${arr[ind]['email']}", child:  CircleAvatar(backgroundImage: NetworkImage("${arr[ind]['picture']['medium']}"),radius: 48,),),
                      SizedBox(height: mdh*0.02,),
                      Text("${arr[ind]['name']['first']} ${arr[ind]['name']['last']}",style: TextStyle(fontSize: mdh*0.038),)
                    ],
                  ),
                ),
                Container(
                 margin: EdgeInsets.all(mdw*0.005),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     _contact_menu(ico: Icon(CupertinoIcons.mail_solid),msg: "message",),
                     _contact_menu(ico: Icon(CupertinoIcons.phone_fill),msg: "call",),
                     _contact_menu(ico: Icon(CupertinoIcons.video_camera_solid),msg: "video",),
                     _contact_menu(ico: Icon(CupertinoIcons.money_dollar),msg: "pay",)
                   ],
                 ),
               ),
                Container(
                    child: Contact_Mobile(num: "${arr[ind]['phone']}",)
                ),
                Container(
                    child: Contact_Notes()),
                Container(
                    child: Contact_Options()),
                Container(
                    child: Contact_Additional(title: "Add to Emergency Contacts",)),
                Container(
                    child: Contact_Additional(title: "Share My Location",)),
              ],
            ),
          )
      ),
    );
  }
}
class _contact_menu extends StatelessWidget {
  final String msg;
  final Icon ico;

  _contact_menu({required this.ico, required this.msg});

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: CupertinoColors.secondarySystemBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      height: mdh * 0.07,
      width: mdw * 0.19,
      child: Column(
        children: [
          Icon(ico.icon, size: mdw * 0.064), // Fix here to use `ico.icon` instead of `this.ico`
          SizedBox(height: mdh * 0.002),
          Text(msg) // Removed unnecessary "$" for interpolation
        ],
      ),
    );
  }
}
class Contact_Mobile extends StatelessWidget
{
  String num="";
  Contact_Mobile({required this.num});
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(mdw*0.029),
      padding: EdgeInsets.all(12),
      height: mdh*0.099,
      decoration: BoxDecoration(
        color: CupertinoColors.secondarySystemBackground,
        borderRadius: BorderRadius.circular(20)
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("mobile"),
          SizedBox(height: mdh*0.0067,),
          Text("$num",style: TextStyle(fontSize: mdw*0.06,color: CupertinoColors.activeBlue),)
        ],
      ),
    );
  }
}
class Contact_Notes extends StatelessWidget
{
  HomeController home=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(mdw*0.029),
      padding: EdgeInsets.all(12),
      height: mdh*0.149,
      width: double.infinity,
      decoration: BoxDecoration(
          color: CupertinoColors.secondarySystemBackground,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Notes"),
          SizedBox(height: mdh*0.0067,),
          Obx(()=>Text("${home.notes}",style: TextStyle(fontSize: mdw*0.053,color: CupertinoColors.black),overflow: TextOverflow.ellipsis,maxLines: 2,))
        ],
      ),
    );
  }
}
class Contact_Options extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(mdw*0.029),
      padding: EdgeInsets.all(4),
      height: mdh*0.179,
      width: double.infinity,
      decoration: BoxDecoration(
          color: CupertinoColors.secondarySystemBackground,
          borderRadius: BorderRadius.circular(20)
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Send Message",style: TextStyle(fontSize: mdw*0.053,color: CupertinoColors.activeBlue),),
          ) ,
          Divider(height: mdh*0.001,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Share Contact",style: TextStyle(fontSize: mdw*0.053,color: CupertinoColors.activeBlue),),
          ),
          Divider(height: mdh*0.001,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Add to Favourites",style: TextStyle(fontSize: mdw*0.053,color: CupertinoColors.activeBlue),),
          )
        ],
      ),
    );
  }
}
class Contact_Additional extends StatelessWidget
{
  String title="";
  Contact_Additional({required this.title});
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(mdw*0.029),
      height: mdh*0.065,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: CupertinoColors.secondarySystemBackground,
          borderRadius: BorderRadius.circular(20)
      ),
      width: double.infinity,
      child:  Text("$title",style: TextStyle(fontSize: mdw*0.053,color: CupertinoColors.activeBlue),),
    );
  }
}