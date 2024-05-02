// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'privacy_policy_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
              //Sin implementación
            },
          ),
          backgroundColor: Color(0xFF40DA62),
          title: Text(
            "Registro",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Image.asset("register.jpg",

                //'https://as1.ftcdn.net/v2/jpg/00/85/51/18/1000_F_85511870_St7mTxJMmdZ0xSt6dT1G96cARUlCBXRT.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFD0FBDA),
                    Color(0xFFD0E5F4),
                  ],
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                      child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Crea tu cuenta ",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                      TextSpan(
                          text: "KANABAN",
                          style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))
                    ]),
                  )),
                  SizedBox(height: 15),
                  Text(
                    'Nombre',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Ingrese su nombre',
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Correo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Ingrese su o',
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Contraseña',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Ingrese su contraseña',
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                      // Acción al apretar el boton
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      backgroundColor: Color(0xFF40DA62),
                    ),
                    child: Text(
                      'Registrarse',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrivacyPolicyPage()),
                      );
                    },
                    child: Column(
                      children: [
                        Text('He leido los terminos de uso y'),
                        Text('politicas de privacidad')
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
