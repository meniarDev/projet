import 'package:flutter/material.dart';
import 'package:project1/flutter_projet/customs/custom_button.dart';
import 'package:project1/flutter_projet/customs/custom_checkBox.dart';
import 'package:project1/flutter_projet/customs/custom_input.dart';
import 'package:project1/flutter_projet/customs/custom_radio_button.dart';
import 'package:project1/flutter_projet/db/database_helper.dart';
import 'package:project1/flutter_projet/models/model_employee.dart';


class AddEmployee extends StatefulWidget {
  const AddEmployee({super.key});

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  final formKey = GlobalKey<FormState>();
  bool? checkbox1 = false, checkbox2 = false, checkbox3 = false;
  String selectedRadioValue = "";
  Employee emp = Employee();
  DataBaseHelper db = DataBaseHelper.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add employee !"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
          child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  CustomInput(
                    hint: "Matricule 0000",
                    label: "Matricule : ",
                    icon: Icons.person,
                    valider: (value) {
                      if (value == null || value.isEmpty) {
                        return "Matricule Obligatoire";
                      }
                      if (value.length != 6) {
                        return "Matricule must be 6 carcter !";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      emp.matricule = value!;
                    },
                  ),
                  CustomInput(
                    hint: "nom ",
                    label: "Nom : ",
                    icon: Icons.person,
                    valider: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nom Obligatoire";
                      }
                      if (value.length <= 3) {
                        return "Nom must be greater than 3 carcter !";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      emp.nom = value!;
                    },
                  ),
                  CustomInput(
                    hint: "prenom ",
                    label: "Prenom : ",
                    icon: Icons.person,
                    valider: (value) {
                      if (value == null || value.isEmpty) {
                        return "Prenom Obligatoire";
                      }
                      if (value.length <= 3) {
                        return "Prenom must be greater than 3 carcter !";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      emp.prenom = value!;
                    },
                  ),
                  CustomInput(
                    hint: "age ",
                    label: "age : ",
                    icon: Icons.person,
                    type: TextInputType.number,
                    valider: (value) {
                      if (value == null || value.isEmpty) {
                        return "age obligatoire";
                      }
                      if (int.parse(value) < 20) {
                        return "min 20 ans  !";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      emp.age = int.parse(value!);
                    },
                  ),
                  CustomCheckBox(
                    value: checkbox1,
                    msg: "A",
                    onchanged: (value) {
                      setState(() {
                        checkbox1 = value;
                      });
                    },
                  ),
                  CustomCheckBox(
                    value: checkbox2,
                    msg: "B",
                    onchanged: (value) {
                      setState(() {
                        checkbox2 = value;
                      });
                    },
                  ),
                  CustomCheckBox(
                    value: checkbox3,
                    msg: "C",
                    onchanged: (value) {
                      setState(() {
                        checkbox3 = value;
                      });
                    },
                  ),
                  CustomRadioButton(
                    titre: "Homme",
                    soutitre: "selectionner Homme",
                    groupValue: selectedRadioValue,
                    value: "H",
                    onchanged: (value) {
                      setState(() {
                        selectedRadioValue = value!;
                      });
                    },
                  ),
                  CustomRadioButton(
                    titre: "Femme",
                    soutitre: "selectionner Femme",
                    groupValue: selectedRadioValue,
                    value: "F",
                    onchanged: (value) {
                      setState(() {
                        selectedRadioValue = value!;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        clr: Colors.green,
                        textValue: "submit",
                        onpressed: () {
                          if (formKey.currentState?.validate() ?? false) {
                            print("form ok ");
                            formKey.currentState!.save();
                            print(emp.toString());
                            db.add(emp);
                          } else {
                            print("form not ok ");
                          }
                        },
                      ),
                      CustomButton(
                        textValue: "reset",
                        clr: Colors.grey,
                        onpressed: () {},
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
