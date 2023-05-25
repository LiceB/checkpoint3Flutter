import 'package:flutter/material.dart';

class RedeSocial {
  final String nome;
  final IconData logo;
  final String descricao;
  final String download;
  final List<String> fotos;
  final Color? cor;

  RedeSocial(
      {required this.nome,
      required this.logo,
      required this.descricao,
      required this.download,
      required this.fotos,
      required this.cor});
}
