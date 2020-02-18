import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listNumber = new List();
  int _lastItem = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _add10();

    _scrollController.addListener((){

      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _add10();
      }

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Lists'),
       ),
       body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listNumber.length,
      itemBuilder: (BuildContext context, int index){

        int image = _listNumber[index];

        return FadeInImage(
          image: NetworkImage("https://i.picsum.photos/id/$image/500/500.jpg"),
          placeholder: AssetImage("assets/jar-loading.gif"),
        );
      },
    );
  }

  void _add10(){

    for (int i = 0; i < 10; i++){
      _listNumber.add(_lastItem++);
    }

    setState(() {
    });

  }
}