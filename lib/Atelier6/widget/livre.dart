import 'dart:convert';

class Livre {
  String titre;
  String auteur;
  int annnee;

  Livre({
    required this.titre,
    required this.auteur,
    required this.annnee,
  });
  Livre.empty()
      : titre = '', // Initialisation avec des valeurs par défaut
        auteur = '',
        annnee = 0;

  String get getTitre => titre;

  set setTitre(String titre) => this.titre = titre;

  get getAuteur => auteur;

  set setAuteur(auteur) => this.auteur = auteur;

  get getAnnnee => annnee;

  set setAnnnee(annnee) => this.annnee = annnee;

  Livre copyWith({
    String? titre,
    String? auteur,
    int? annnee,
  }) {
    return Livre(
      titre: titre ?? this.titre,
      auteur: auteur ?? this.auteur,
      annnee: annnee ?? this.annnee,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'titre': titre,
      'auteur': auteur,
      'annnee': annnee,
    };
  }

  factory Livre.fromMap(Map<String, dynamic> map) {
    return Livre(
      titre: map['titre'] as String,
      auteur: map['auteur'] as String,
      annnee: map['annnee'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Livre.fromJson(String source) =>
      Livre.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Livre(titre: $titre, auteur: $auteur, annnee: $annnee)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Livre &&
        other.titre == titre &&
        other.auteur == auteur &&
        other.annnee == annnee &&
        other.annnee == annnee;
  }

  @override
  int get hashCode {
    return titre.hashCode ^ auteur.hashCode ^ annnee.hashCode;
  }

  bool _listEquals(List<String> a, List<String> b) {
    if (identical(a, b)) return true;
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
