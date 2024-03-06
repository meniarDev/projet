import 'package:flutter/material.dart';
import 'package:project1/TP5/Widgets/customButton.dart';
import 'package:project1/TP5/Widgets/customCheckBox.dart';
import 'package:project1/TP5/Widgets/customText.dart';

class AddEtudiant extends StatefulWidget {
  const AddEtudiant({super.key});

  @override
  _AddEtudiantState createState() => _AddEtudiantState();
}

class _AddEtudiantState extends State<AddEtudiant> {
  final formKey = GlobalKey<FormState>();
  bool? valuechk1 = false, valuechk2 = false, valuechk3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    labeltext: "N° C.I.N",
                    hinttext: "Enter le numero cin de l etudiant",
                    clavier: TextInputType.number,
                    valider: (String? value) {
                      if (value == null || value.length == 0)
                        return "Le cin est obligatoire";
                      if (value.length != 8) return "le cin est incorrect";
                      return null;
                    }, label: '', hint: '',),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                CustomText(
                    labeltext: "Nom",
                    hinttext: "Enter le nom de l etudiant",
                    clavier: TextInputType.name,
                    valider: (String? value) {
                      if (value == null || value.length == 0)
                        return "Le nom est obligatoire";
                      return null;
                    }),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                CustomText(
                    labeltext: "Prénom",
                    hinttext: "Enter le prénom de l etudiant",
                    clavier: TextInputType.name,
                    valider: (String? value) {
                      if (value == null || value.length == 0)
                        return "Le prénom est obligatoire";
                      return null;
                    }),
                CustomCheckbox(
                    text: "Club 1",
                    value: valuechk1,
                    onchanged: (bool? value) {
                      setState(() {
                        valuechk1 = value!;
                      });
                    }),
                CustomCheckbox(
                    text: "Club 2",
                    value: valuechk2,
                    onchanged: (bool? value) {
                      setState(() {
                        valuechk2 = value!;
                      });
                    }),
                FormField(
                  builder: (state) {
                    return Column(
                      children: [
                        CustomCheckbox(
                          text: "Club 3",
                          value: valuechk3,
                          onchanged: (bool? value) {
                            setState(() {
                              valuechk3 = value!;
                            });
                          },
                        ),
                        Text(state.errorText ?? '',
                            style:
                                TextStyle(color: Colors.red, fontSize: 22.0)),
                      ],
                    );
                  },
                  validator: (value) {
                    if (valuechk1 == false &&
                        valuechk2 == false &&
                        valuechk3 == false)
                      return "vous devez choisir un club!";
                    return null;
                  },
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      titre: "Ajouter",
                      onPressed: () {
                        if (formKey.currentState!.validate())
                          print("form ok");
                        else
                          print("form not ok");
                      },
                      couleur: Colors.green.withOpacity(0.7),
                    ),
                    CustomButton(
                      titre: "Annuler",
                      onPressed: () {
                        formKey.currentState!.reset();
                      },
                      couleur: Color.fromRGBO(64, 155, 216, 1).withOpacity(0.7),
                    ),
                  ],
                ),
              ],
            )),
      ),
    ));
  }
}
