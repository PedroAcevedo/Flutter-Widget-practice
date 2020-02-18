import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name     = '';
  String _email    = '';
  String _password = '';
  String _date = '';
  String _default = 'Fly';

  TextEditingController textEditingController = new TextEditingController();

  List<String> _powers = ['Super strong', 'Fly', 'Super Vision'];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Inputs texts'),
    ),
    body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      children: <Widget>[
        
        _createInput(),
        Divider(),
        _createEmail(),
        Divider(),
        _createPassword(),
        Divider(),
        _createDate(context),
        Divider(),
        _createDropDown(),
        Divider(),
        _createPerson(),
      ],
      )
    );
  }

  Widget _createInput() {

    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('Letras ${ _name.length }'),
        hintText: 'Pedro Pablo',
        labelText: 'Name',
        helperText: 'Only your name',
        suffixIcon: Icon ( Icons.accessibility ),
        icon: Icon( Icons.account_circle )
      ),
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
      );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('My name is: $_name' ),
      subtitle: Text('$_email'),
      trailing: Text(_default),
      );

  }

  Widget _createEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress, 
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon ( Icons.mail ),
        icon: Icon( Icons.mail_outline )
      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );

  }

  Widget _createPassword() {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Passowrd',
        labelText: 'Password',
        suffixIcon: Icon ( Icons.lock ),
        icon: Icon( Icons.lock )
      ),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }

  Widget _createDate(BuildContext context){

    return TextField(
      controller: textEditingController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      hintText: 'Born date',
      labelText: 'Born date',
      suffixIcon: Icon ( Icons.perm_contact_calendar ),
      icon: Icon( Icons.calendar_today )
      ),
      onTap: () {

        FocusScope.of(context).requestFocus(new FocusNode());
        _pickDate( context );
      },
    );
  }

  _pickDate(BuildContext context) async{

    DateTime picked = await showDatePicker(
      context: context,
      firstDate: new DateTime(2020),
      lastDate: DateTime(2025),
      initialDate: new DateTime.now(),
    );
    if(picked != null){
      setState(() {
        _date = picked.toString();
        textEditingController.text = _date;
      });
    }

  }

  Widget _createDropDown() {

    return  Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),

        Expanded(
          child: DropdownButton(
            value: _default,
            items: getOptionsDropDown(),
            onChanged: (opt) {
              setState(() {
                _default = opt;
              });
            } ,
            ),
        )
      ],
      );
    
    


  }

  List<DropdownMenuItem<String>> getOptionsDropDown() {

    List<DropdownMenuItem<String>> list = new List();

      _powers.forEach( (power) {
        list.add(DropdownMenuItem(
          child: Text(power),
          value: power,
        ));
      }
      );
    
    return list;
  }

}