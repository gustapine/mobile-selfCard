import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 16, 17, 17),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/90855105?v=4"),
              ),
              const Text(
                'Gustavo Henrique Dias',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto Mono'),
              ),
              const Text(
                'ESTAGIÁRIO',
                style: TextStyle(
                  fontFamily: 'Roboto Mono 2',
                  color: Color.fromARGB(255, 236, 74, 87),
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(color: Colors.white),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text('11 99999-8899',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Roboto Mono')),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'gusta@gmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Roboto Mono',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
