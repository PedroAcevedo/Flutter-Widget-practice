import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options = [ 'One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Components")
        ),
        body: ListView(
          children: _createdItemsShorter(),
        ),
      ),
    );
  }

  List<Widget> _createdItems(){

    List<Widget> list = new List<Widget>();

      for(String opt in options){
          
        ListTile listTile = ListTile(title: Text( opt ),);
          
        list..add( listTile )
            ..add( Divider() );

        }

      return list;
  }  

  List<Widget> _createdItemsShorter(){
    return options.map( ( items ) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text( items + '!' ),
            subtitle: Text('Complement'),
            leading: Icon(Icons.beach_access),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
            ),
          Divider()
        ],
      );
    }).toList();
  }

}

