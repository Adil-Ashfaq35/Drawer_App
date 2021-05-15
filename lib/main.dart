import 'package:drawer_app/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home:  HomePage(),
     /* routes: <String , WidgetBuilder>
        {
         "/a":(BuildContext context) => new home("home page"),
      }*/
      );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:  new Text("Drawer App"),
        elevation: defaultTargetPlatform== TargetPlatform.android?100.0:5.0,
      ),
      drawer: Drawer(

        child:new ListView(
          children: [
            new UserAccountsDrawerHeader(
                accountName:new Text("Adil Ashfaq",style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.black),) ,
                accountEmail: new Text("adilashfaq500@gmail.com",style: TextStyle(color: Colors.black) ),
              currentAccountPicture: new CircleAvatar(
                child: Text("A"),
                backgroundColor:Theme.of(context).platform== TargetPlatform.iOS
                    ? Colors.deepPurple :
                Colors.white,
              ),
              otherAccountsPictures: [
                new CircleAvatar(
                  child: Text("K"),
                  backgroundColor:Theme.of(context).platform== TargetPlatform.iOS
                      ? Colors.deepPurple :
                  Colors.white,
                ),

              ],

    ),
            new ListTile(

              trailing: Icon(Icons.home_outlined,color: Colors.teal,),

              leading: new Text("Home",style: TextStyle(fontWeight: FontWeight.bold),),
              onTap:() { Navigator.of(context).pop();
                //Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context )=>
                new home("Home Page")));
              }

            ),
            new ListTile(

              trailing: Icon(Icons.notification_important,color: Colors.teal ),

              leading: new Text("Notification",style: TextStyle(fontWeight: FontWeight.bold),),
                onTap:() { Navigator.of(context).pop();
                //Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context )=>
                new home("Notification")));
                }


            ),
            new ListTile(

              trailing: Icon(Icons.settings ,color: Colors.teal),

              leading: new Text("Settings",style: TextStyle(fontWeight: FontWeight.bold),),

            ),
            new ListTile(

              trailing: Icon(Icons.phone, color: Colors.teal),

              leading: new Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold),),

            ),
            new ListTile(

              trailing: Icon(Icons.feedback,color: Colors.teal ),

              leading: new Text("Leave Feedback",style: TextStyle(fontWeight: FontWeight.bold),),

            ),
            new ListTile(

              trailing: Icon(Icons.logout,color: Colors.teal ),

              leading: new Text("LogOut",style: TextStyle(fontWeight: FontWeight.bold),),

            ),
            new Divider(),
            new ListTile(

              trailing: Icon(Icons.close,color: Colors.teal ),

              leading: new Text("Close",style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () => Navigator.of(context).pop(),

            ),
          ],
        ),

      ),
      body: new Container(
        child: new Center(
          child: Text("Home page"),
        ),
      ),
    );
  }
}

