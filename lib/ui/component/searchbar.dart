import 'package:flutter/cupertino.dart';
class Searchbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.of(context).size.width;
    var mdh=MediaQuery.of(context).size.height;
    return Container(
      height: mdh*0.07,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
            ),
            height: mdh*0.07,
            width: mdw*0.67,
            child: CupertinoTextField(
              cursorColor: CupertinoColors.black,
              prefix: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(CupertinoIcons.search,color: CupertinoColors.label,),
              ),
              placeholder: "Search",
              placeholderStyle: TextStyle(fontFamily: "myapple",color: CupertinoColors.black),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CupertinoColors.quaternaryLabel
              ),
            ),
            padding: EdgeInsets.all(5),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(child: Icon(CupertinoIcons.add,color: Color(0xFF86FA82),),decoration: BoxDecoration(color: CupertinoColors.activeGreen,borderRadius: BorderRadius.circular(20)),height: mdh*0.04,width: mdw*0.09,),
                Container(child: Icon(CupertinoIcons.ellipsis,color: CupertinoColors.separator,),decoration: BoxDecoration(color: CupertinoColors.white,borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.2)),height: mdh*0.04,width: mdw*0.09,),
              ],
            ),
          )
        ],
      ),
    );
  }
}