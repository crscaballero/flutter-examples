import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto()
          ],
        ),
      ),
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://d3e1m60ptf1oym.cloudfront.net/4442a190-bae8-49c7-974c-53b61f04c223/L28163-FR-01_uxga.jpg'),
        height: 350.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Vancouver city', style: estiloTitulo),
                  SizedBox(height: 7.0,),
                  Text('Science World at TELUS', style: estiloSubTitulo)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.greenAccent, size: 30.0,),
            Text((41).toString(), style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share')
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.greenAccent, size: 40.0),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.greenAccent))
      ],
    );
  }

  Widget _crearTexto(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia porta est quis ullamcorper. Maecenas eu tortor ut dui tempus dapibus non vel velit. Donec eleifend nunc ultrices, ornare turpis sed, volutpat ligula. Pellentesque maximus commodo augue, a laoreet ipsum iaculis non. Nullam augue purus, fermentum vitae aliquam et, dapibus nec diam. Aenean ac lorem vel elit consequat vulputate. Nullam eleifend, ipsum eget ullamcorper pulvinar, magna turpis tempor justo, nec laoreet risus nisl vel metus. Duis lacus justo, hendrerit sagittis efficitur eu, euismod non massa. Nunc euismod finibus eros, vitae feugiat ante sagittis ac. Etiam mauris urna, pretium id libero eu, iaculis dignissim leo. Duis vulputate enim id elit feugiat ultrices.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}
