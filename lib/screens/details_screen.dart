import 'package:checkpoint3/models/rede_social.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final RedeSocial redeSocial;

  DetailsScreen({required this.redeSocial});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Post'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            redeSocial.logo,
            size: 150,
            color: redeSocial.cor,
          ),
          Center(
            child: Text(
              redeSocial.descricao,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(top: 30),
            height: 350,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: redeSocial.fotos.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 450,
                    height: 450,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(redeSocial.fotos[index]),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
