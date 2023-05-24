import 'package:checkpoint3/models/rede_social.dart';
import 'package:checkpoint3/screens/details_screen.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<RedeSocial> redesSociais = [
    RedeSocial(
        nome: 'Facebook',
        logo: Icons.facebook,
        avaliacao: 4.2,
        descricao: 'facebook',
        fotos: [
          'facebook_1',
          'facebook_2',
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Posts'),
      ),
      body: ListView.builder(
        itemCount: redesSociais.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(redesSociais[index].nome),
            leading: Icon(redesSociais[index].logo),
            trailing: Text(redesSociais[index].avaliacao.toString()),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(redeSocial: redesSociais[index]),
                  ));
            },
          );
        },
      ),
    );
  }
}
