import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';
class HomeController extends GetxController{
  RxList<dynamic> arr=[].obs;
  @override
  void onInit()
  {
    super.onInit();
    mydatas();
  }
  void mydatas()
  async{
    var uri=Uri.parse("https://randomuser.me/api?results=5");
    var data=await http.get(uri);
    var res=jsonDecode(data.body);
    var lst=res['results'];
    arr.assignAll(lst);
  }
}
