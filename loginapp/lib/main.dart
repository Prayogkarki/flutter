import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


class LoginPage extends StatefulWidget{
  @override
  State createState()=> LoginPageState();

}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState(){
    super.initState();
    _iconAnimationController=AnimationController(
      vsync: this,
    duration: Duration(milliseconds: 500));

    _iconAnimation=new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut);

    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }



  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image:AssetImage("assets/manu.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.insert_emoticon,
                size: _iconAnimation.value*125,
                color: Colors.yellowAccent,
              ),
//              FlutterLogo(
//                size: _iconAnimation.value * 100,
//              ),
              
              Form(
                  child: Theme(
                    data: ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Enter Email',

                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),

                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Enter Password',
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          SizedBox(height: 20.0,),

                          MaterialButton(
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.exit_to_app),
                                SizedBox(width: 3.5),
                                Text('Login'),
                              ],
                            ),
                            onPressed: (){},
                            splashColor: Colors.redAccent,
                          ),

                        ],
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}