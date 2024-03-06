import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page de login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginText(),
              Padding(
                padding: const EdgeInsets.all(16.0), // Ajout de "const" et "padding:"
              ),
              passwordnText(),
              Padding(
                padding: const EdgeInsets.all(16.0), 
),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {


                      if (formKey.currentState!.validate()) {      
                            print('Validation réussie');
    }
                      
                    },
                    child: Text('se conncter '),
                  ),
                  ElevatedButton(
                    onPressed: () {
formKey.currentState!.reset();



                      // Action pour le deuxième bouton
                    },
                    child: Text('annuler '),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }



Widget  LoginText(){

return TextFormField(
  style:TextStyle(color:Colors.blue),
  keyboardType:TextInputType.emailAddress,
  
  decoration: InputDecoration( 
    
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
    
    prefixIcon:Icon(Icons.login_rounded,size:28.0),
  enabled: true,
  label: Text("login"),
  hintText: "donner votre login",hintStyle: TextStyle(color:Colors.pink),

  ),

  validator:(String? value ){

            if(value==null|| value.length==0)

          return "login  est obligatoire ";
              if(!value.contains('@'))
             return "email incorect";
              return null;
 }
   
  
  );











}

Widget  passwordnText(){
return TextFormField(
  
  style:TextStyle(color:Colors.blue),
  keyboardType:TextInputType.number,
  obscureText: true, 
  decoration: InputDecoration( 
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
    prefixIcon:Icon(Icons.login_rounded,size:28.0),
  enabled: true,
  label: Text("password "),
  hintText: "donner votre mot du passe ",hintStyle: TextStyle(color:Colors.pink),),
validator :(String? value ){


    if(value==null|| value.length==0)

   return "mdp est obligatoire ";

  if(value.length<6)
  return "mot de passe  incorrect ";
  return null;

   }
   
  
  
  
  
  )
  ;

}





}