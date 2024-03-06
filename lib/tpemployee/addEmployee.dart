import 'package:flutter/material.dart';
import 'package:project1/tpemployee/widgets/CustumElevatedButton.dart';
import 'package:project1/tpemployee/widgets/CustumTextForm.dart';
import 'package:project1/tpemployee/widgets/custumCheckBox.dart';
import 'package:project1/tpemployee/widgets/custumRadioBox.dart';


class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  final formKey = GlobalKey<FormState>();
  bool? valuechk1, valuechk2;
  String radioValueselected = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ajouter un nouveau employee", style: TextStyle(fontFamily: "flu"),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        CustumTextForm(
                          label: "Matricule",
                          hint: "Donner la matricule employee",
                          uneIcone: Icons.person,
                          valider: (value) {
                            if ((value == null) || (value.length == 0))
                              return "Matricule est obligatoire";
                            if (value.length != 6)
                              return "forma matricule incorrecte";
                            else
                              return null;
                          },
                        ),
                        CustumTextForm(
                          label: "Nom",
                          hint: "Donner le nom du l' employee",
                          uneIcone: Icons.person,
                          valider: (value) {
                            if ((value == null) || (value.length == 0))
                              return "Nom est obligatoire";

                            if ((value.length != 3))
                              return "forma Nom incorrecte";
                            else
                              return null;
                          },
                        ),
                        CustumTextForm(
                          label: "Prenom",
                          hint: "Donner le prenom employee",
                          uneIcone: Icons.person,
                          valider: (value) {
                            if ((value == null) || (value.length == 0))
                              return "prenom est obligatoire";
                            if (value.length != 3)
                              return "forma prenom incorrecte";
                            else
                              return null;
                          },
                        ),
                        CustumTextForm(
                          label: "Age",
                          hint: "Donner l'age de l'employee",
                          uneIcone: Icons.person,
                          TypeClavier: TextInputType.number,
                          valider: (value) {
                            if ((value == null) || (value.length == 0))
                              return "age est obligatoire";

                            if (int.parse(value) < 20)
                              return "forma age incorrecte";
                            else
                              return null;
                          },
                        ),
                        CustumCheckBox(
                          value: valuechk1,
                          msg: "Permis A",
                          onchanged: (value) {
                            setState(() {
                              valuechk1 = value;
                            });
                          },
                        ),
                        CustumCheckBox(
                          value: valuechk2,
                          msg: "Permis B",
                          onchanged: (value) {
                            setState(() {
                              valuechk2 = value;
                            });
                          },
                        ),
                        CustumRadioBox(
                          titre: "Homme",
                          soustitre:
                              "Selectionner cette option si vous etes un homme",
                          value: "H",
                          groupvalue: radioValueselected,
                          onchanged: (value) {
                            setState(() {
                              radioValueselected = value!;
                            });
                          },
                        ),
                        CustumRadioBox(
                          titre: "Femme",
                          soustitre:
                              "Selectionner cette option si vous etes un homme",
                          value: "F",
                          groupvalue: radioValueselected,
                          onchanged: (value) {
                            setState(() {
                              radioValueselected = value!;
                            });
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustumElevatedButton(
                              TitreButoon: "Enregistrer",
                              couleur: Colors.green,
                              onpressed: () {
                                if (formKey.currentState?.validate() ?? false) {
                                  print("Form OK");
                                } else {
                                  print("not ok");
                                }
                              },
                            ),
                            CustumElevatedButton(
                              TitreButoon: "Annuler",
                              couleur: Colors.green,
                              onpressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
