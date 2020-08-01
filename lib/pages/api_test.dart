import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/services/jsondata.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class json_data extends StatefulWidget {
  @override
  _json_dataState createState() => _json_dataState();
}

class _json_dataState extends State<json_data> {

  List<jsondata> data1 = List<jsondata>();

  Future<List<jsondata>> getdata() async {
    Response response = await get('http://www.json-generator.com/api/json/get/cegPmLLOle?indent=2');
    var data = jsonDecode(response.body);
    var profiles = List<jsondata>();
    for(var profile in data){
      profiles.add(jsondata.fromjson(profile));
    }
    return profiles;
  }
  @override
  void initState() {
    getdata().then((value){
      setState(() {
        data1.addAll(value);
      });
      });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: data1.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                  },
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(data1[index].name),
                      Text(
                          data1[index].age.toString(),
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        data1[index].gender,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Text(data1[index].email),
                      Text(data1[index].phone),
                      Text(data1[index].company),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.jfif'),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
