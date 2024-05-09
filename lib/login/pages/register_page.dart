import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meals/login//components/my_textfield.dart';
import 'package:meals/login/components/my_button.dart';
import 'package:meals/login/pages/login_page.dart';
import 'package:meals/screens/tabs.dart';


class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});
  
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

  class _RegisterPageState extends State<RegisterPage>{
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

void navigateToRegisterPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => LoginPage(
      onTap: () {}, // Fornecendo uma função vazia
    )),
  );
}


  // sign user in method
void signUserUp(BuildContext context) async {
    try {
      if(passwordController.text == confirmPasswordController.text){
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );}
     Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage(onTap:() {},)),
      );
        
      }
      // Navegar para a página TabsScreen após o login bem-sucedido
     catch (error) {
      String errorMessage = 'Ocorreu um erro ao fazer login.';

      if (error is FirebaseAuthException) {
        if (error.code == 'user-not-found') {
          errorMessage = 'Usuário não encontrado.';
        } else if (error.code == 'wrong-password') {
          errorMessage = 'Senha incorreta.';
        }
      }

      // Mostrar um pop-up com a mensagem de erro
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Erro de Cadastro'),
            content: Text(errorMessage),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 131, 57, 0),
      resizeToAvoidBottomInset: false,
      body: 
        SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.login_rounded,
                size: 100,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'Crie sua conta Agora!',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: emailController,
                hintText: 'email',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),

              const SizedBox(height: 10),
               MyTextField(
                controller: confirmPasswordController,
                hintText: 'Confirmar senha',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
               onTap: () => signUserUp(context),
              ),

              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              
              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => navigateToRegisterPage(context),
                    child: Text(
                      'Faça o Login!',
                      style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ), 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
