import 'package:flutter/material.dart';
import 'package:myapp/services/apps.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Appls> app=[
  Appls(name: 'Jungmin123',views: '89.4K Views',loves: '12K Loves'),
  Appls(name: 'PetStory234',views: '2309K Views',loves: '237K Loves'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Column(
        children: <Widget>[
          SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.dashboard,
                  size: 50.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.jfif'),
                  radius: 30.0,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'What Would',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'You like to play?',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: new BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: new BorderRadius.only(
                              topLeft:  const  Radius.circular(20.0),
                              topRight: const  Radius.circular(20.0),
                              bottomLeft: const  Radius.circular(20.0),
                              bottomRight: const  Radius.circular(20.0)
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                  Icons.extension,
                                  color: Colors.pinkAccent,
                                  size: 50.0
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                  'Puzzle',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                  'Level 14',
                                style: TextStyle(
                                fontSize: 13.0,
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: new BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: new BorderRadius.only(
                                  topLeft:  const  Radius.circular(20.0),
                                  topRight: const  Radius.circular(20.0),
                                bottomLeft: const  Radius.circular(20.0),
                                bottomRight: const  Radius.circular(20.0)
                              ),
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                  Icons.directions_car,
                                  color: Colors.blueAccent,
                                  size: 50.0
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Racing',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                'Level 02',
                                style: TextStyle(
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true ,
              itemCount: app.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                  child: Card(
                    child: ListTile(
                      onTap: (){},
                      title: Column(
                        children: <Widget>[
                          Text(app[index].name),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.local_florist,
                              ),
                              Text(
                                  app[index].views,
                              ),
                              SizedBox(width: 40.0),
                              Icon(
                                Icons.favorite,
                              ),
                              Text(
                                app[index].loves,
                              ),
                            ],
                          )
                        ],
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar.jfif'),
                      ),
                    ),
                  ),
                );
              },
          ),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber[100],
          items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.directions_car),
          title: Text('Apps'),
          ),
          BottomNavigationBarItem(
          icon: Icon(
              Icons.favorite,
            color: Colors.redAccent,
          ),
          title: Text('Hot Apps'),
          ) ,
          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings')
          )
        ],
      ),
    );
  }
}

