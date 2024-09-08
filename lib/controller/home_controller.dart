import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';
class HomeController extends GetxController{
  RxList<dynamic> arr=[].obs;
  RxString notes="".obs;
  @override
  void onInit()
  {
    super.onInit();
    mydatas();
    GetNotes();
  }
  void mydatas()
  async{
    var uri=Uri.parse("https://randomuser.me/api?results=5");
    var data=await http.get(uri);
    var res=jsonDecode(data.body);
    var lst=res['results'];
    arr.assignAll(lst);
  }
  void GetNotes() async {
    var uri = Uri.parse("https://api.quotable.io/quotes/random");
    var data = await http.get(uri);
    var res = jsonDecode(data.body);
    notes.value=res[0]['content'];
  }
}
