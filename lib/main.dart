import 'package:flutter/material.dart';

void main() {
  runApp(
MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor:Colors.red,
                backgroundImage:AssetImage('images/IMG-20201129-WA0054.jpg') ,

              ),
              Text('Ritik Shah',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Text('FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal[100],
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold
                )
                ,

              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],

                ),
              ),
              Card(
                color: Colors.white,
                margin : EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                child:ListTile(
                  leading:  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title:Text('+91 980 527 8485',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0


                    ),) ,
                ) ,
              ),
              Card(
                color: Colors.white,
                margin : EdgeInsets.symmetric(vertical: 10,horizontal: 25),

                child:ListTile(
                  leading:Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title:Text('2005533@kiit.ac.in',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0
                    ),) ,
                ) ,
              )
            ],
          )
        ),
      ),
    );
  }
}

