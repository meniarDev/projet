import 'package:flutter/material.dart';
import 'package:project1/flutter_projet/db/database_helper.dart';
import 'package:project1/flutter_projet/models/model_employee.dart';


class ListEmployee extends StatefulWidget {
  const ListEmployee({super.key});

  @override
  State<ListEmployee> createState() => _ListEmployeeState();
}

class _ListEmployeeState extends State<ListEmployee> {
  Employee emp = Employee();
  DataBaseHelper db = DataBaseHelper.instance;
  List employeesFromDB = [];
  Future getData() async {
    List tmp = await db.getAllEmployees();
    setState(() {
      employeesFromDB.addAll(tmp);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("list employee !"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: employeesFromDB.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(employeesFromDB[index]['matricule']),
                subtitle: Text(employeesFromDB[index]['nom'] +
                    " " +
                    employeesFromDB[index]['prenom']));
          },
        ));
  }
}
