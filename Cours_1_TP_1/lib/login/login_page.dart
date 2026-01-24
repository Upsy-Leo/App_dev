import 'package:cours_01/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mailController = TextEditingController();

    return Scaffold(appBar: AppBar.new(
      title: const Text("Log in or Sign up", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
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
                    SizedBox(height: 25),
                    Separation_or(),
                    SizedBox(height: 16),
                    Bouton_Apple(),
                    SizedBox(height: 16),
                    Bouton_Google(),
                    SizedBox(height: 16),
                    Bouton_Facebook()
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
        prefixIcon: const Icon(Icons.email_outlined),
        filled: true,
        fillColor: Colors.grey.shade50,
        hintText: 'Enter your email',
        hintStyle: TextStyle(
          color: AppColors.textSecondary,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
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
      child: FilledButton(style: FilledButton.styleFrom(
        backgroundColor: AppColors.buttonPrimaryBackground,
        foregroundColor: AppColors.buttonPrimaryText
      ),
       onPressed: () { },
       child: const Text(
            'Continue',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,),
           ),
       ),
    );
      
  }
}

class Bouton_Apple extends StatelessWidget{
  const Bouton_Apple({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 50,
      child: ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
       onPressed: () {  } as VoidCallback?,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SvgPicture.asset('assets/apple_logo.svg', width: 24, height: 24),
           const SizedBox(width: 12),
           const Text(
            'Continue with Apple',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,),
           ),
         ],
       ),
    ));
      
  }
}

class Bouton_Google extends StatelessWidget{
  const Bouton_Google({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 50,
      child: ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
       onPressed: () {  } as VoidCallback?,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SvgPicture.asset('assets/google_logo.svg', width: 24, height: 24),
           const SizedBox(width: 12),
           const Text(
            'Continue with Google',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,),
           ),
         ],
       ),
    ));
      
  }
}

class Bouton_Facebook extends StatelessWidget{
  const Bouton_Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 50,
      child: ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
       onPressed: () {  } as VoidCallback?,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SvgPicture.asset('assets/facebook_logo.svg', width: 24, height: 24),
           const SizedBox(width: 12),
           const Text(
            'Continue with Facebook',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,),
           ),
         ],
       ),
    ));
      
  }
}

class Separation_or extends StatelessWidget{
  const Separation_or({super.key});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 800,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'OR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppColors.textSecondary
            ),
          ),
        ],
        ),
    );
  }
}

