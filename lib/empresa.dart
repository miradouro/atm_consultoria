import 'package:flutter/material.dart';

class Empresa extends StatefulWidget {
  const Empresa({super.key});

  @override
  State<Empresa> createState() => _EmpresaState();
}

class _EmpresaState extends State<Empresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Empresa"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("images/detalhe_empresa.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                      "Sobre a empresa",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange[300],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "It is a long established fact that a reader will be distracted "
                "by the readable content of a page when looking at its layout. "
                "The point of using Lorem Ipsum is that it has a more-or-less "
                "normal distribution of letters, as opposed to using 'Content "
                "here, content here', making it look like readable English. "
                "Many desktop publishing packages and web page editors now "
                "use Lorem Ipsum as their default model text, and a search for "
                "'lorem ipsum' will uncover many web sites still in their infancy. "
                "Various versions have evolved over the years, sometimes by accident, "
                "sometimes on purpose (injected humour and the like).",
              style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
