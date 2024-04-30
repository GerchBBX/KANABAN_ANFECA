// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'register_page.dart';
//import 'package:kanaban/privacy_policy_page.dart';

//import 'register_page.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPage();
}

class _PrivacyPolicyPage extends State<PrivacyPolicyPage> {
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
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
          ),
          backgroundColor: Color(0xFF40DA62),
          title: Text(
            "Terminos de Uso y Politicas de Privacidad",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFD0FBDA), Color(0xFFD0E5F4)])),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Introducción",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                "En KANABAN, nos comprometemos a proteger la privacidad y seguridad de nuestros usuarios. Esta política de privacidad explica cómo recolectamos, utilizamos, compartimos y protegemos la información personal de los usuarios que interactúan con nuestra aplicación.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text("Información que recolectamos",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                "Cuando utilizas KANABAN, podemos recolectar la siguiente información:\n - Información de contacto: Incluye tu nombre y dirección de correo electrónico. Recolectamos esta información directamente de ti cuando te registras en nuestra aplicación.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
              Text("Cómo utilizamos tu información",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                  "Usamos la información que recolectamos de las siguientes maneras:\n - Para proporcionarte los servicios de KANABAN\n - Para comunicarnos contigo, por ejemplo, informarte sobre cambios en nuestros servicios o enviar notificaciones importantes.\n - Para mejorar y optimizar la experiencia del usuario analizando cómo se utiliza nuestra aplicación.",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 24),
              Text("Compartir tu información",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                  "No vendemos ni alquilamos tu información personal a terceros. Podemos compartir tu información solo en las siguientes circunstancias:\n - Con proveedores de servicios que nos ayudan a operar la aplicación, siempre que dichos proveedores estén obligados por contrato a proteger la privacidad de tu información.\n - Si es necesario para cumplir con una ley o regulación, en respuesta a una solicitud legal, como una orden judicial o una citación.",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 24),
              Text("Seguridad",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                  "Tomamos medidas de seguridad adecuadas para proteger contra el acceso, alteración, divulgación o destrucción no autorizada de tu información personal. Sin embargo, ningún método de transmisión por Internet o de almacenamiento electrónico es 100% seguro, por lo que no podemos garantizar su seguridad absoluta.",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 24),
              Text("Tus derechos",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                  "Tienes derecho a acceder, corregir o eliminar la información personal que tenemos sobre ti. Puedes ejercer estos derechos poniéndote en contacto con nosotros a través de kanaban@gmai.com.",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 24),
              Text("Cambios a nuestra política de privacidad",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                  "Podemos actualizar nuestra política de privacidad ocasionalmente. Te notificaremos de cualquier cambio publicando la nueva política de privacidad en esta página y, si los cambios son significativos, te proporcionaremos un aviso más prominente.",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 24),
              Text("Contacto",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                  "Si tienes preguntas sobre esta política de privacidad, por favor contacta con nosotros en kanaban@gmail.com",
                  style: TextStyle(fontSize: 16))
            ],
          ),
        ),
      ),
    );
  }
}
