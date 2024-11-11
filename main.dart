import 'package:belajar_widget/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Container Widget',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: AppColors.darkBlue,
        ),
        body: Center(
          child: Container(
          height: 220,
          width: double.infinity,
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.black,
                Colors.blue,
                Color.fromARGB(255, 204, 11, 238),
                Colors.black,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.darkBlue),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Title: Flutter Stuff',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Divider(color: Colors.white),
              const Text(
                'Description: This is a card-like layout using a Container widget. It has padding, margin, and a box shadow.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(

                      onPressed: () {},
                      child: const Text(
                        'visit to read more',
                        style: TextStyle(
                          
                        ),
                    )
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}