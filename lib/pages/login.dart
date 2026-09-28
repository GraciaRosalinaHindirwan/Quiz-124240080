import 'package:flutter/material.dart';
import 'package:kuis_mobile/pages/destinationList.dart';
import 'package:kuis_mobile/theme/appColors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController = TextEditingController(); 
  final TextEditingController passwordController = TextEditingController(); 

  void login(){
    if(usernameController.text == "gracia" && passwordController.text == "080"){
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => Destinationlist(),
        ),
      );
    } else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: AppColors.primary,
          content: Text("username dan password tidak sesuai", 
            style: TextStyle(
              color: AppColors.background, 
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(padding: EdgeInsetsGeometry.all(36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Login", 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24, 
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Hi Welcome Back, You've been missed", 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16, 
                        color: AppColors.textSecondary,
                        fontWeight: FontWeight.normal, 
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24),

                Column(
                  children: [
                    TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        filled: true,
                        fillColor: AppColors.cardBackground,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: AppColors.secondary, 
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: AppColors.primary,
                            width: 2, 
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 16),

                    TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: AppColors.cardBackground,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: AppColors.secondary, 
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: AppColors.primary,
                            width: 2, 
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      login(); 
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.white, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                    ),

                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700, 
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}