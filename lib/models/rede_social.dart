import 'package:flutter/material.dart';

class RedeSocial {
  final String nome;
  final IconData logo;
  final String descricao;
  final double avaliacao;
  final List<String> fotos;

  RedeSocial({
    required this.nome,
    required this.logo,
    required this.descricao,
    required this.avaliacao,
    required this.fotos
  });
}
