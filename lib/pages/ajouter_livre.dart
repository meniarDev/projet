import 'package:flutter/material.dart';
import 'package:project1/pages/custom_text_formfiled.dart';



class AddLivre extends StatefulWidget {
  const AddLivre({Key? key}) : super(key: key);

  @override
  State<AddLivre> createState() => _AddLivreState();
}

class _AddLivreState extends State<AddLivre> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajouter un livre"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 30.0,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const CustomText(
                  label: "Titre",
                  hint: "donner un titre",
                  uneIcon: Icons.book_online,
                  typeClavier: TextInputType.text,
                  uneIcone: Icons.book_online,
                ),
                CustomText(
                  label: "Auteur",
                  hint: "donner l'auteur du livre",
                  uneIcon: Icons.person_2,
                  typeClavier: TextInputType.name,
                  valider: (value) {
                    if (value == null || value.isEmpty) {
                      return "l'auteur est obligatoire";
                    }
                    return null;
                  },
                  uneIcone: Icons.person_2,
                ),
                CustomText(
                  label: "Année de sortie",
                  hint: "donner l'année de sortie",
                  uneIcon: Icons.date_range_outlined,
                  typeClavier: TextInputType.datetime,
                  valider: (value) {
                    if (value == null || value.isEmpty) {
                      return "l'année de sortie est obligatoire";
                    }
                    if (int.parse(value) < 2000) {
                      return "l'année doit être supérieure à 2000";
                    }
                    return null;
                  },
                  uneIcone: Icons.date_range_outlined,
                ),
                const SizedBox(
                    height: 20), // Espacement entre les champs et les boutons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour sauvegarder le livre
                        if (formKey.currentState!.validate()) {
                          // Effectuer l'enregistrement
                          // Vous pouvez ajouter votre logique d'enregistrement ici
                        }
                      },
                      child: const Text('Enregistrer'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour annuler l'ajout de livre
                        Navigator.pop(context); // Retour à l'écran précédent
                      },
                      child: const Text('Annuler'),
                      style: ElevatedButton.styleFrom(
                        primary:
                            Colors.red, // Changer la couleur du bouton Annuler
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
