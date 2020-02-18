import 'package:flutter/material.dart'; 

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  
  double _valueSlider = 100.0;
  bool _lock = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('SliderPage'),
       ),
       body: Container(
         padding: EdgeInsets.only(top: 50.0),
         child: Column(
           children: <Widget>[
             _createSlider(),
             _checkBox(),
             _createSwitch(),
             Expanded(
               child: _createImage()
             ),
            ],
         ),
       ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Size of the image',
      value: _valueSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_lock) ? null :  (valor) {
        setState(() {
          _valueSlider = valor;
        });
      },
      );
  }

  Widget _createImage(){
    return Image(
      image: NetworkImage('https://www.pngitem.com/pimgs/m/512-5124387_plantilla-de-moe-y-homero-mirndose-imagenes-de.png'),
      width: _valueSlider,
      fit: BoxFit.contain
    );
  }

  Widget _checkBox() {

    return CheckboxListTile( 
      title: Text("lock slider"),
      value: _lock,
      onChanged: (valor) {
        setState(() {
          _lock = valor;
        });
      },
    );
  }

  Widget _createSwitch() {


    return SwitchListTile( 
      title: Text("lock slider"),
      value: _lock,
      onChanged: (valor) {
        setState(() {
          _lock = valor;
        });
      },
    );

  }
}