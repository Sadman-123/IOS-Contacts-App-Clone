import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Myaccount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.of(context).size.width;
    var mdh=MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(10),
      height: mdh*0.11,
      width: double.infinity,
      decoration: BoxDecoration(
      ),
      child: Row(
        children: [
          Container(
            height: mdh*0.11,
            width: mdw*0.258,
            decoration: BoxDecoration(
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Sadman",style: TextStyle(fontSize: mdw*0.069,fontWeight: FontWeight.bold,fontFamily: "myapple",color: CupertinoColors.black),),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text("1109 contacts",style: TextStyle(fontSize: mdw*0.035,fontFamily: "myapple",color: CupertinoColors.black),),
                        SizedBox(width: mdw*0.020,),
                        Text("20 active",style: TextStyle(fontSize: mdw*0.035,color: CupertinoColors.activeGreen),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Icon(CupertinoIcons.right_chevron),
            ),
          )
        ],
      ),
    );
  }
}