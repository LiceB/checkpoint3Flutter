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
      download: '2,96 bilhões',
      descricao:
          'O Facebook é uma rede social global que conecta bilhões de pessoas, permitindo compartilhamento de conteúdo, interações sociais e publicidade direcionada.',
      fotos: [
        'images/facebook/facebook_1.jpg',
        'images/facebook/facebook_2.jpg',
        'images/facebook/facebook_3.jpg',
      ],
      cor: Colors.blue,
    ),
    RedeSocial(
      nome: 'Youtube',
      logo: Icons.play_circle,
      download: '2,51 bilhões',
      descricao:
          'O YouTube é uma plataforma de compartilhamento de vídeos online, onde os usuários podem assistir, criar e compartilhar conteúdo com uma vasta audiência global.',
      fotos: [
        'images/youtube/youtube_1.jpg',
        'images/youtube/youtube_2.jpg',
        'images/youtube/youtube_3.jpg',
      ],
      cor: Colors.red,
    ),
    RedeSocial(
      nome: 'WhatsApp',
      logo: Icons.chat_bubble,
      download: '2 bilhões',
      descricao:
          'O WhatsApp é um aplicativo de mensagens instantâneas que permite trocar mensagens, chamadas de voz e vídeo, compartilhar mídia e criar grupos de conversa.',
      fotos: [
        'images/whatsapp/whatsapp_1.jpg',
        'images/whatsapp/whatsapp_2.jpg',
        'images/whatsapp/whatsapp_3.jpg',
      ],
      cor: Colors.green,
    ),
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
            title: Text(
              redesSociais[index].nome,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              redesSociais[index].logo,
              color: redesSociais[index].cor,
            ),
            trailing: Text(redesSociais[index].download.toString()),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailsScreen(redeSocial: redesSociais[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
