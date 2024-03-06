import 'package:flutter/material.dart';
import 'package:project1/TP5/Widgets/customButton.dart';
import 'package:project1/TP5/Widgets/customText.dart';



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
      appBar: AppBar(title: Text("random")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomText(
                  label: 'Titre',
                  hint: 'Donnez un titre',
                  iconne: Icons.title_outlined,
                  typeClavier: TextInputType.text,
                  valider: (value) {
                    if (value == null || value.length == 0)
                      return "Année de sortie obligatoire";
                    return null;
                  }),
              CustomText(
                  label: 'Auteur',
                  hint: 'Donnez un auteur',
                  iconne: Icons.person_pin_circle,
                  typeClavier: TextInputType.text,
                  valider: (value) {
                    if (value == null || value.length == 0) {
                      return "Auteur obligatoire";
                    }
                    if(value.length<=6)
                  return "le nom de l'auteur est invalide";
                    return null;
                  }),
              CustomText(
                  label: 'Année',
                  hint: "Donner l'année de sortie",
                  iconne: Icons.calendar_month_outlined,
                  typeClavier: TextInputType.number,
                  valider: (value) {
                    if (value == null || value.length == 0)
                      return "Année de sortie obligatoire";
                    if (int.parse(value) < 2000)
                      return "L'année doit etre sup a 2000";
                    return null;
                  }),
                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                  CustomButton(
                    text:'valider',
                     onPressed:(){
                    if (formKey.currentState?.validate() ?? false) {
                        formKey.currentState?.save();
                  }}),
                  CustomButton(
                    text:'Annuler',
                    onPressed:(){
                    formKey.currentState?.reset();

                    })
                   ]
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
