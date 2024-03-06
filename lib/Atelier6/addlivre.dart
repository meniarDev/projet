
import 'package:flutter/material.dart';
import 'package:project1/Atelier6/widget/custom_text.dart';
import 'package:project1/Atelier6/widget/livre.dart';

class AddLivre extends StatefulWidget {
  const AddLivre({Key? key}) : super(key: key);

  @override
  State<AddLivre> createState() => _AddLivreState();
}

class _AddLivreState extends State<AddLivre> {
  final formKey = GlobalKey<FormState>();
  Livre livre = Livre.empty() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajout Livre'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomText(
                  label: "Titre",
                  hint: "Donner un titre",
                  icon: Icons.book_online,
                  typeClavier: TextInputType.text,
                  valider: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Titre obligatoire";
                    }
                    return null;
                  },
                onsaved: (String? value){
                   livre.setTitre=value!;
                  }
                ),
                CustomText(
                  label: "Auteur",
                  hint: "Donner l'auteur du livre",
                  icon: Icons.person,
                  typeClavier: TextInputType.name,
                  valider: (value) {
                    if (value?.isEmpty ?? true) {
                      return "L'auteur est obligatoire";
                    }
                    return null;
                  },


                  onsaved: (String? value){

                    livre.setAuteur=value;
                  }
                ),
                CustomText(
                  label: "Année de sortie",
                  hint: "Donner l'année de sortie",
                  icon: Icons.date_range_outlined,
                  typeClavier: TextInputType.number,
                  valider: (value) {
                    if (value?.isEmpty ?? true) {
                      return "L'année de sortie est obligatoire";
                    }
                    int? year = int.tryParse(value!);
                    if (year == null || year < 2000) {
                      return "L'année doit être supérieure à 2000";
                    }
                    return null;
                  },

                  onsaved: (String? value){

                    livre.setAnnnee=value;
                  }





                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          print("form validé");
                          print(livre);
                        } else {
                          print("form non validée");
                        }
                      },
                      child: const Text('Enregistrer'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        formKey.currentState!.reset();
                      },
                      child: const Text('Annuler'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
