import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondPage extends StatelessWidget {
  @override
   Widget build(BuildContext context){
     return new Scaffold(
       appBar: new AppBar(title: new Text("Register"), backgroundColor: Colors.black),

        backgroundColor: Colors.greenAccent,
            body:new Stack(
              fit: StackFit.expand,
              children: <Widget>[
                new Image(
                  image: new AssetImage ("assets/background.jpg"),
                  fit: BoxFit.cover,
                  color: Colors.black87,
                  colorBlendMode: BlendMode.darken,
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[ 
    
                    new Form(
                      child: new Theme(
                        data: new ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal
                        ),
                          child: new Column(
                          children: <Widget>[
                            new TextFormField(
                              decoration: new InputDecoration(
                                hintText: "First Name",
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            new TextFormField(
                              decoration: new InputDecoration(
                                hintText: "Last Name",
                              ),
                              keyboardType: TextInputType.text,
                    
                            ),
                            
                            new TextFormField(
                              decoration: new InputDecoration(
                                hintText: "Email",
                              ),
                              keyboardType: TextInputType.text,
                
                            ),
                            
                            new TextFormField(
                              decoration: new InputDecoration(
                                hintText: "Password",
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,  //obsecure text by not showing it
                            ),


                            new TextFormField(
                              decoration: new InputDecoration(
                                hintText: "Confirm Password",
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,  //obsecure text by not showing it
                            ),


                            new Column(
                              children: <Widget>[
                                RaisedButton(
                                child: Text("Submit"),
                                 onPressed: () {},
                                  color: Colors.red,
                                  textColor: Colors.white,
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  splashColor: Colors.grey,
                                ),
                                ]
                            ),
                           
                          ],
                         )
                        )
                       )                 
                       ]
                    ),
                  ],
                    )
                );
   }
}