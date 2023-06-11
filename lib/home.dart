import 'package:flutter/material.dart';
import 'package:validator/global.dart';
import 'package:validator/validator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  var formError = {};

  submitForm() {
    setState(() {
      formError["name"] =
          Validator.isEmpty(nameController.text) ? "Required" : null;
      formError["email"] =
          !Validator.isEmail(emailController.text) ? "Must Be Email" : null;
      formError["password"] = !Validator.isPassword(passwordController.text)
          ? "Must Be Password"
          : null;
      formError["number"] =
          !Validator.isNumber(numberController.text) ? "Must Be Number" : null;
    });

    if(!Validator.isEmptyObject(formError)){
      print("Form Is Not Valid");
      return;
    }
    print("Form Is Valid");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Validator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              br(),
              TextField(

                controller: nameController,
                decoration:appInputDecoration(label: "Name",errorText: formError["name"]),
              ),
              br(),
              TextField(
                controller: emailController,
                  decoration:appInputDecoration(label: "Email",errorText: formError["email"]),
              ),
              br(),
              TextField(
                controller: passwordController,
                  decoration:appInputDecoration(label: "Password",errorText: formError["password"]),
              ),
              br(),
              TextField(
                controller: numberController,
                 decoration:appInputDecoration(label: "Number",errorText: formError["number"]),
              ),
              br(),
           appButton(context,text: "Submit",onPressed: submitForm),
            ],
          ),
        ),
      ),
    );
  }
}
