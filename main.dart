import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:polygon_clipper/polygon_border.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Circular Profile Avatar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        
        body: Center(
          child:Container(
              height: size.height,
              width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Positioned(
                child:FloatingActionButton(
                  shape: PolygonBorder(
                    sides: 3,
                    borderRadius:5.0,
                    rotate:90.0,
                    border: BorderSide.none,
                  ),
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                      );

                    },
                    child: Icon(Icons.star),
                ),
              ),
               Positioned(
                right: 70.0,
                bottom: 70.0,
                
                child: CircularProfileAvatar(
                 null,
                 child: SvgPicture.asset("asset/images/tharu-female.svg"),
                  borderColor: Colors.black,
                  borderWidth: 3,
                  elevation: 7,
                  radius: 120,
                  backgroundColor: Colors.white54,
                ),
                
              ),
                Positioned(
                  top: size.height * 0.5,
                  left: size.width * 0.5,
                child:FloatingActionButton(
                  shape: PolygonBorder(
                    sides: 3,
                    borderRadius:5.0,
                    rotate:270.0,
                    border: BorderSide.none,
                   
                  ),
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                      );

                    },
                    child: Icon(Icons.star),
                ),
               ),
            ],
          ),  
        
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: FlatButton(
                      padding:EdgeInsets.symmetric(horizontal:70.0,vertical:10.0),
                      color: Colors.green,
                      textColor: Colors.white,
                      highlightColor: Colors.indigo,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstRoute()),
                        );
                      },
                      child: Icon(Icons.star),
                     
                    ),
                  ),
          
            ],
          ),
          ),
        ),
    );
  }
}
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Male Tharu"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Profile"),
      ),
      body: Center(
       child: Text(
                   "User Age") ,
      
      ),
    );
  }
}