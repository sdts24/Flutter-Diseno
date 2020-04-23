
import 'package:disenos/src/widgets/drawe_menu.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatefulWidget {

  @override
  _BasicoPageState createState() => _BasicoPageState();
}

class _BasicoPageState extends State<BasicoPage> {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basico'),
      ),
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        height: 288.0,
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Puente en el Lago',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Bello Lago con su puente',
                    style: estiloSubTitulo,
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _acciones(Icons.call, 'CALL'),
        _acciones(Icons.near_me, 'ROUTER'),
        _acciones(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _acciones(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Incididu=nt esto sigue siendo un texto desde Lorem Ipsum para pruebas con el dispositivo sit irure sint adipisicing laboris fugiat reprehenderit velit mollit ullamco. In commodo cillum dolor minim. Velit ad eu ex nisi eiusmod reprehenderit aute ex cupidatat laboris nostrud est in.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

 
}
