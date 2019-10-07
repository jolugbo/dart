import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

String welcomeMessage(String name){
  return "Welcome ${name} to the intermediate level class";
}
String encode(String param){
  List eByte = utf8.encode(param);
  String encode = base64.encode(eByte);
  return encode;
}
String decode(String param){
  List eByte2 = base64.decode(param);
  String decode = utf8.decode(eByte2);
  return decode;
}

Future<String> httpPost(String param) async {
  var response = await http.post(param, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
  return response.body;
}
Future<String> httpGet(String param) async {
  var response;
  await http.get(param).then((resp){
    response = resp.body;
  });
  return response;

//  var response;
//  http.get(param).then((resp){
//    response = resp.body;
//    print(resp.body);
//  });
//  return response;
}
void getFile(){
 var resp = path.join('directory', 'file.txt');
 print(resp);
}
