import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Arrangements/sizeModification.dart';

class SelectScreen extends StatefulWidget
{
  @override
  _SelectScreenState createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue[900],
      body:Stack(
      fit: StackFit.expand,
        children: <Widget>[
          new Center(
          child:Column(children: <Widget>[
            Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n "),
          InkWell(
              onTap: () =>Navigator.pushNamed(context, 'SignIn'),//write function jp
              child: new Container( 
                width: 200.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.grey[900],
                  border: new Border.all(color: Colors.grey, width: 5.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),

                child: new Center(child: new Text('Sign in', style: new TextStyle(fontSize: SizeConfig.blockSizeVertical *3, color: Colors.white),),),
              ),
            ),
            Text("\n"),
          InkWell(
              onTap: () => 
              {
                Navigator.pushNamed(context,'Register'),
              },//write function jp
              child: new Container( 
                width: 200.0,
               
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.grey[900],
                  border: new Border.all(color: Colors.grey, width: 5.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(child: new Text('Register', style: new TextStyle(fontSize: SizeConfig.blockSizeVertical *3, color: Colors.white),),),
              ),
            ),
          ],
          ),
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context,'HomeScreen');
                },
                color: Colors.grey,
                child: Text("Skip"),
                )
            ],
          ),
      ],
      ),
    ),

    );
  }
}