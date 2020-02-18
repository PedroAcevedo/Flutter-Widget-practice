import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cards"),),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          cardType1(),
          SizedBox(height: 20.0,),
          cardType2(),
          SizedBox(height: 20.0,),
          cardType1(),
          SizedBox(height: 20.0,),
          cardType2(),
          SizedBox(height: 20.0,),
          cardType1(),
          SizedBox(height: 20.0,),
          cardType2(),
          SizedBox(height: 20.0,),
          cardType1(),
          SizedBox(height: 20.0,),
          cardType2(),
          SizedBox(height: 20.0,),
          cardType1(),
          SizedBox(height: 20.0,),
          cardType2(),
          SizedBox(height: 20.0,),
          cardType1(),
          SizedBox(height: 20.0,),
          cardType2(),
          SizedBox(height: 20.0,),
        ],)
    );
  }

    Widget cardType1() {
      return Card(
        //clipBehavior: Clip.antiAlias,
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: 
        Column(children: <Widget>[
          ListTile(
            leading: Icon(Icons.image,color: Colors.blue,),
            title: Text("My fitrs card"),
            subtitle: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
            FlatButton(
              child: Text("Cancel"),
              onPressed: () {},
            ),
            FlatButton(
              child: Text("Ok"),
              onPressed: () {},
            )
          ],)
        ],
        ),);
    }
    Widget cardType2() {

      final card =  Container(
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage('https://hdwallpapers.imgix.net/wallpaper-36301572841974pmf98mlwqi.jpg?auto=compress&cs=tinysrgb&dpr=1'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 300),
              height: 250.0,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text("Descripción de una imagen")
            )
            //Image(image:  NetworkImage('https://hdwallpapers.imgix.net/wallpaper-36301572841974pmf98mlwqi.jpg?auto=compress&cs=tinysrgb&dpr=1'),),
          ],
          )
      );
 
      return Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow( 
            color: Colors.black26,
            offset: Offset(2.0, 10.0),
            spreadRadius: 2.0,
            blurRadius: 10.0,
            )
            ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: card,
        ),
      );
    }
}