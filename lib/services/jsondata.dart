import 'package:http/http.dart';
import 'package:intl/intl.dart';

class jsondata
{
  int age;
  String name;
  String gender;
  String company;
  String email;
  String phone;

  jsondata({this.age,this.name,this.gender,this.company,this.email,this.phone});

  jsondata.fromjson(Map<String,dynamic> json){
    age = json["age"];
    name = json["name"];
    gender = json["gender"];
    company = json["company"];
    email = json["email"];
    phone = json["phone"];

    print(age);
  }
}

