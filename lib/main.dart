import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/api_test.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/json_test': (context) => json_data(),
    }
));

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: SafeArea(
        child: Center(
          child: Container(
            width: 300.0,
            height: 250.0,
            decoration: new BoxDecoration(
              color: Colors.blue[900],
              borderRadius: new BorderRadius.only(
                  topLeft:  const  Radius.circular(20.0),
                  topRight: const  Radius.circular(20.0),
                  bottomLeft: const  Radius.circular(20.0),
                  bottomRight: const  Radius.circular(20.0)
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    height: 75.0,
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: new BorderRadius.only(
                          topLeft:  const  Radius.circular(10.0),
                          topRight: const  Radius.circular(10.0),
                          bottomLeft: const  Radius.circular(10.0),
                          bottomRight: const  Radius.circular(10.0)
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: FlatButton.icon(
                          onPressed: () async {
                            Navigator.pushNamed(context, '/home');
                          },
                          icon: Icon(
                            Icons.home,
                            size: 40.0,
                          ),
                          label: Text(
                            'Home',
                              style: TextStyle(
                                fontSize: 20.0,
                              )
                          )
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 200.0,
                    height: 75.0,
                    decoration: new BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: new BorderRadius.only(
                          topLeft:  const  Radius.circular(10.0),
                          topRight: const  Radius.circular(10.0),
                          bottomLeft: const  Radius.circular(10.0),
                          bottomRight: const  Radius.circular(10.0)
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: FlatButton.icon(
                              onPressed: () async {
                                Navigator.pushNamed(context, '/json_test');
                              },
                              icon: Icon(
                                  Icons.person,
                                size: 40.0,
                              ),
                              label: Text(
                                  'Profiles',
                                style: TextStyle(
                                  fontSize: 20.0,
                                )
                              )
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      )
    );
  }
}


