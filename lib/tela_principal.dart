import 'package:atm_consultoria/cliente.dart';
import 'package:atm_consultoria/contato.dart';
import 'package:atm_consultoria/servico.dart';
import 'package:atm_consultoria/tela_secundaria.dart';
import 'package:flutter/material.dart';

import 'empresa.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  void paginaEmpresa(){
    print("click");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Empresa(),
      ),
    );
  }
  void paginaContato(){
    print("click");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Contato(),
      ),
    );
  }
  void paginaServico(){
    print("click");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Servico(),
      ),
    );
  }
  void paginaCliente(){
    print("click");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Cliente(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ATM Consultoria",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: paginaEmpresa,
                    child: Image.asset("images/menu_empresa.png"),
                  ),
                  GestureDetector(
                      onTap: paginaServico,
                      child: Image.asset("images/menu_servico.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: paginaCliente,
                    child: Image.asset("images/menu_cliente.png"),
                  ),
                  GestureDetector(
                      onTap: paginaContato,
                      child: Image.asset("images/menu_contato.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
