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
                width: 800,
                height: 500,
                child: Form(child: Column(
                  children: [
                    Email(mailController),
                    SizedBox(height: 16),
                    Bouton_Continuer(),
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
        fillColor: Colors.grey.shade50,
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
    );
  }

}

class Bouton_Continuer extends StatelessWidget{
  const Bouton_Continuer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 50,
      child: ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white
      ),
       onPressed: () {  },
       child: const Text(
        'Se connecter',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,),
       )),
    );
      
  }
}
