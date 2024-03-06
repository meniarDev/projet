// ignore_for_file: unused_import

import 'dart:convert';


import 'package:flutter/material.dart';

class Livre {
  String titre;
  String auteur;
  int annee;
  String type;
  List<String>? support;

  Livre({
    this.titre = "",
    this.auteur = "",
    this.annee = 0,
    this.type = "",
    this.support,
  });

  get getTitre => this.titre;

  set setTitre(titre) => this.titre = titre;

  get getAuteur => auteur;

  set setAuteur(auteur) => this.auteur = auteur;

  get getAnnee => annee;

  set setAnnee(annee) => this.annee = annee;
  get get => annee;

  //set set( ) => annee;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'titre': titre,
      'auteur': auteur,
      'annee': annee,
      'type': type,
      'support': support,
    };
  }

  factory Livre.fromMap(Map<String, dynamic> map) {
    return Livre(
        titre: map['titre'] as String,
        auteur: map['auteur'] as String,
        annee: map['annee'] as int,
        type: map['type'] as String,
        support: List<String>.from(
          (map['support'] as List<String>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Livre.fromJson(String source) =>
      Livre.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Livre(titre: $titre, auteur: $auteur, annee: $annee, type: $type, support: $support)';
  }
}
