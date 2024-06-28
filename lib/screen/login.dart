import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  final _formLogin = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
      ),
      body: Column(
        children: [
          Form(
            key: _formLogin,
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(labelText: 'User',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.black
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'User ?';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(labelText: 'Password',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    prefixIconColor: Colors.black
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Password ?';
                    }
                    return null;
                  },
                ),
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){_formLogin.currentState!.validate();}, child: Text("YES")),
                  ElevatedButton(onPressed: (){_formLogin.currentState!.validate();}, child: Text("NO"))
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/register");
                },
                child: Text("REGISTER ?")),
            ],
          ))
        ],
      ),
    );
  }
}