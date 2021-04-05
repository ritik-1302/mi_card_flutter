import 'package:flutter/material.dart';

void main() {
  runApp(
MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                DevInfo(name:'Ritik Shah',path: 'images/IMG-20201129-WA0054.jpg',phone:'9805278485',email: '2005533@kiit.ac.in'),
                DevInfo(),
                MaterialButton(child: Text(' chairman page '),
                    onPressed:(){

                }
                )


              ],

            ),
          )
        ),
      ),
    );
  }
}



class DevInfo extends StatelessWidget {

  String name;
  String path;
  String phone;
  String email;


DevInfo({this.name,this.path,this.email,this.phone});
  @override

  Widget build(BuildContext context) {

    if (email==null || path==null || phone==null || name==null)
    {
      email='Example email';
      path= 'images/IMG-20201129-WA0054.jpg';
      phone='Exmaple phonenumber';
      name='Example name';

    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor:Colors.red,
          backgroundImage:AssetImage('path') ,

        ),
        Text(name,
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 40.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
        Text('FLUTTER DEVELOPER',
          style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.white,
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
            color: Colors.white,

          ),
        ),
        Card(
          color: Colors.white,
          margin : EdgeInsets.symmetric(vertical: 10,horizontal: 25),
          child:ListTile(
            leading:  Icon(
              Icons.phone,
              color: Colors.black,
            ),
            title:Text(phone,
              style: TextStyle(
                  color: Colors.black,
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
              color: Colors.black,
            ),
            title:Text(email,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0
              ),) ,
          ) ,
        ),
        SizedBox(
          height: 20.0,
          width: 150.0,
          child: Divider(
            color: Colors.white,

          ),
        ),

      ],
    );
  }
}

