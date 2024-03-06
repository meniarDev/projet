import 'dart:convert';

class Employee {
  String matricule;
  String nom;
  String prenom;
  int age;
  Employee({
    this.matricule = "",
    this.nom = "",
    this.prenom = "",
    this.age = 18,
  });
  String get getMatricule => this.matricule;

  set setMatricule(String matricule) => this.matricule = matricule;

  get getNom => this.nom;

  set setNom(nom) => this.nom = nom;

  get getPrenom => this.prenom;

  set setPrenom(prenom) => this.prenom = prenom;

  get getAge => this.age;

  set setAge(int age) => this.age = age;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matricule': matricule,
      'nom': nom,
      'prenom': prenom,
      'age': age,
    };
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      matricule: map['matricule'] as String,
      nom: map['nom'] as String,
      prenom: map['prenom'] as String,
      age: map['age'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Employee.fromJson(String source) =>
      Employee.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Employee(matricule: $matricule, nom: $nom, prenom: $prenom, age: $age)';
  }
}
