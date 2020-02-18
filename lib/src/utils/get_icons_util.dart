import 'package:flutter/material.dart';

final listIcons = <String, IconData> {

  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'donut_large'   : Icons.donut_large,
  'input'        : Icons.input,
  'list'          : Icons.list,
  'tune'          : Icons.tune
};


Icon getIconFromString (String icon){
  return Icon(listIcons[icon], color: Colors.blue);
}


