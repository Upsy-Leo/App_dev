import 'package:cours_01/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  final mailController = TextEditingController();

    String _email = '';

  @override
  Widget build(BuildContext context) {
    

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
                    Email(mail: mailController, onChanged: (value){
                      setState(() {
                        _email = value;
                      });
                    },),
                    SizedBox(height: 16),
                    Bouton_Continuer(
                      onPressed: _email.isNotEmpty? () {
                        print("Bouton continuer appuyé");
                      }
                      : null,
                    ),
                    SizedBox(height: 25),
                    Separation_or(),
                    SizedBox(height: 16),
                    Bouton_Continuer_avec(appli: 'Apple', icon: 'assets/apple_logo.svg', onPressed: () {}),
                    SizedBox(height: 16),
                    Bouton_Continuer_avec(appli: 'Google', icon: 'assets/google_logo.svg', onPressed: () {}),
                    SizedBox(height: 16),
                    Bouton_Continuer_avec(appli: 'Facebook', icon: 'assets/facebook_logo.svg', onPressed: () {}),
                    SizedBox(height: 16),
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
  final ValueChanged<String> onChanged;
  

  const Email({super.key, required this.mail, required this.onChanged});

  @override
  Widget build(BuildContext context){
    return TextFormField(
      controller: mail,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email_outlined),
        filled: true,
        fillColor: Colors.grey.shade50,
        hintText: 'Enter your email',
        hintStyle: TextStyle(
          color: AppColors.textPrimary,
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
  final VoidCallback? onPressed;

  const Bouton_Continuer({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 50,
      child: FilledButton(style: FilledButton.styleFrom(
        backgroundColor: AppColors.buttonPrimaryBackground,
        foregroundColor: AppColors.buttonPrimaryText,
        disabledBackgroundColor: Colors.grey.shade300,
      ),
       onPressed: onPressed,
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

class Bouton_Continuer_avec extends StatelessWidget{
  

  final String appli;
  final String icon;
  final VoidCallback onPressed;

  const Bouton_Continuer_avec({super.key, required this.appli, required this.icon, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 50,
      child: ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
       onPressed: onPressed,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SvgPicture.asset(icon, width: 24, height: 24),
           const SizedBox(width: 12),
           Expanded(child: Text(
            'Continue with $appli',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,),
           ),),
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
          Divider(height: 50, thickness: 20,),
          Text(
            'OR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppColors.textSecondary
            ),
          ),
          Divider(height: 50, thickness: 20,),
        ],
        ),
    );
  }
}

