import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mailController = TextEditingController();

    return Scaffold(appBar: AppBar.new(
      title: const Text("Log in or Sign up", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700)),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                child: Form(child: Column(
                  children: [
                    Email(mailController)
                  ],
                )),
              )
            ],
        ),
      ),
    );
  }
  
}

class Email extends StatelessWidget{

  final TextEditingController mail;

  const Email(this.mail);

  @override
  Widget build(BuildContext context){
    return TextFormField(
      controller: mail,
      decoration: InputDecoration(
        labelText: 'Email',
        prefixIcon: const Icon(Icons.email_outlined),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: Colors.grey,
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
    );
  }

}
