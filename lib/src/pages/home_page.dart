import 'package:flutter/material.dart';

import 'package:components/src/utils/get_icons_util.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Components"),
        ),
        body: _list(),
      ),
    );
  }

  Widget _list() {

    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        //print(snapshot.data);
        return ListView(
          children: _listItems(snapshot.data, context),
        );

      },
    );
  

  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context){

    return data.map( (opt) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text( opt['texto'] ),
            leading: getIconFromString( opt['icon'] ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue ,),
            onTap: () {
              
              /* final route = MaterialPageRoute(
                builder: (context) {
                  return AlertPage();
                }
              );
              Navigator.push(context, route); */

              Navigator.pushNamed(context, opt['ruta']);

            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}