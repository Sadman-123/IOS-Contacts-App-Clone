import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SavedContacts extends StatelessWidget
{
  var sortedNames = {
    'A': ['Alice', 'Aaron', 'Ava', 'Aiden', 'Amelia'],
    'B': ['Brian', 'Bella', 'Ben', 'Brianna', 'Blake'],
    'C': ['Catherine', 'Chris', 'Carla', 'Connor', 'Clara'],
    'D': ['David', 'Diana', 'Daniel', 'Daisy', 'Derek'],
    'E': ['Emma', 'Ethan', 'Ella', 'Eric', 'Evelyn'],
    'F': ['Frank', 'Fiona', 'Felix', 'Faith', 'Freddie'],
    'G': ['Grace', 'George', 'Gabby', 'Gavin', 'Gloria'],
    'H': ['Harry', 'Hannah', 'Henry', 'Hazel', 'Hudson'],
    'I': ['Isabella', 'Isaac', 'Ivy', 'Ian', 'Iris'],
    'J': ['Jack', 'Jessica', 'James', 'Jasmine', 'Jacob'],
    'K': ['Kelly', 'Kevin', 'Kara', 'Kyle', 'Kendra'],
    'L': ['Liam', 'Laura', 'Luke', 'Lily', 'Leo'],
    'M': ['Maria', 'Michael', 'Mia', 'Mason', 'Megan'],
  };
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.of(context).size.width;
    var mdh=MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(child: Container(
              child: ListView(
                padding: EdgeInsets.all(10),
                children: sortedNames.entries.map((entry) {
                  List<String> names = entry.value..sort();
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          entry.key,
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900,fontFamily: "myapple",color: CupertinoColors.black),
                        ),
                        margin: EdgeInsets.all(10),
                        width:double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CupertinoColors.secondarySystemFill
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                      ...names.map((name) {
                        return Column(
                          children: [
                           Container(
                             child: Column(
                               children: [
                                 CupertinoListTile(
                                   title: Text(name,style: TextStyle(fontFamily: "apple",color: CupertinoColors.black,fontSize: mdw*0.0615),),
                                   leading: CircleAvatar(
                                     child: Text("${name[0].toUpperCase()}${name[name.length-1].toUpperCase()}",style: TextStyle(fontFamily: "myapple",color: CupertinoColors.white),),
                                     backgroundColor: CupertinoColors.tertiaryLabel,
                                   ),
                                   trailing:Row(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Icon(CupertinoIcons.phone_fill,color: CupertinoColors.activeGreen,),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Icon(CupertinoIcons.video_camera_solid),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Icon(CupertinoIcons.mail_solid),
                                       )
                                     ],
                                   ),
                                   onTap: (){},
                                 ),
                                 Divider(height: mdh*0.001,),
                               ],
                             ),
                             decoration: BoxDecoration(
                               color: CupertinoColors.secondarySystemFill,
                               borderRadius: BorderRadius.only(
                                 topRight: Radius.circular(10),
                                 topLeft: Radius.circular(10),
                                 bottomRight: Radius.circular(10),
                                 bottomLeft: Radius.circular(10)
                               )
                             ),
                             margin: EdgeInsets.only(
                               left: 10,
                               right: 10
                             ),
                           )
                          ],
                        );
                      }).toList(),
                      SizedBox(height: 20),
                    ],
                  );
                }).toList(),
              ),
            )),
            SingleChildScrollView(
              child: Container(
                width: 25,
                child: Column(
                  children: List.generate(26, (index) {
                    return Text(String.fromCharCode(65 + index),style: TextStyle(fontFamily: "myapple",color: CupertinoColors.black),);
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}