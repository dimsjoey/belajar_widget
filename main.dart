import 'package:belajar_widget/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login Page',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          backgroundColor: AppColors.darkBlue,
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60.0),
                    Image.asset('assets/images/flutter-removebg-preview.png'),

                    const SizedBox(height: 10),

                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.0, 
                            color: AppColors.darkGrey,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.0, 
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        hintText: 'Email',
                      ),
                    ),

                    const SizedBox(height: 10),

                     TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: () {},
                        icon: Icon(Icons.visibility)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.0, 
                            color: AppColors.darkGrey,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.0, 
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 15.0),

                    Text('Forgot Password', style: TextStyle(color: AppColors.darkBlue),),

                    const SizedBox(height: 15.0),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.darkBlue,
                        padding: EdgeInsets.symmetric(horizontal:110 , vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(                     
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 12.0,
                          color: Colors.white),
                        ),
                      ),
                    ),

                    const SizedBox(height: 190.0),

                    Text(
                      'New User? Create Account',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}