import 'package:flutter/material.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: InformacionUsuario(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () => Navigator.pushNamed(context, 'page2'),
      ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),

          ListTile(title: Text('Nombre: '),),
          ListTile(title: Text('Edad: '),),
          Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(title: Text('Profesion 1'),),
          ListTile(title: Text('Profesion 1'),),
          ListTile(title: Text('Profesion 1'),),

        ],
      ),
    );
  }
}