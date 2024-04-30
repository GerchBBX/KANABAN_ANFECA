// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'change_password_page.dart';
import 'home_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen superior
          Flexible(
            flex: 1,
            child: Image.network(
              'https://t3.ftcdn.net/jpg/06/56/97/20/240_F_656972077_jAon9gaXE4GwdjMYcRvw6eGiXHlsd2xC.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),

          //El resto de la Pantalla
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
                  Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                  SizedBox(height: 5),
                  InkWell(
                      child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Inicia sesión con tu cuenta ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                      TextSpan(
                          text: "KANABAN",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))
                    ]),
                  )),
                  SizedBox(height: 35),

                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Ingrese su correo',
                      prefixIcon: Icon(Icons.person_2),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Contraseña',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Ingrese su contraseña',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 35),

                  //Boton de Aceptar
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
                      'Iniciar Sesión',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangePassWordPage()),
                      );
                    },
                    child: Center(
                        child: Text('¿Olvidaste tu Constraseña?, Recupérala',
                            style: TextStyle(
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                color: Colors.blueAccent))),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Center(
                        child: Text('¿No tienes Cuenta?, Registrate aquí',
                            style: TextStyle(
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                color: Colors.blueAccent))),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
