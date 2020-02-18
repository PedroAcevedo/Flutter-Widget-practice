import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Avatar page'),
          actions: <Widget>[

            Container(
              margin: EdgeInsets.all(6.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://img.cartoongoodies.com/wp-content/uploads/2019/11/07152740/Rick-Sanchez-face-778x1024.png'),
                backgroundColor: Colors.green,
                radius: 25.0,
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('RS'),
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            image: NetworkImage('https://images7.alphacoders.com/633/thumb-1920-633262.png'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          ),
        ),
      ),
    );
  }
}