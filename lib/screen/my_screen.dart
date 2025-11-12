import 'package:flutter/material.dart';
import 'package:telalogin/widgets/my_elevated_button.dart';
import 'package:telalogin/widgets/my_text_field.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    void funcao() {
      print('fui cricado');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Área do cliente',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 43, 118),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: MyElevatedButton(
                    colorButton: Colors.green,
                    title: 'Conta cliente',
                    onPressed: funcao,
                    buttonSize: Size(150, 20),
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  child: MyElevatedButton(
                    colorButton: Colors.green,
                    title: 'Resultados',
                    onPressed: funcao,
                    buttonSize: Size(150, 20),
                  ),
                ),
                SizedBox(width: 20),

                Flexible(
                  child: MyElevatedButton(
                    colorButton: Colors.green,
                    title: 'Paciente',
                    onPressed: funcao,
                    buttonSize: Size(150, 20),
                  ),
                ),
                SizedBox(width: 20),

                Flexible(
                  child: MyElevatedButton(
                    colorButton: Colors.green,
                    title: 'Transmissões',
                    onPressed: funcao,
                    buttonSize: Size(150, 20),
                  ),
                ),
                SizedBox(width: 20),

                Flexible(
                  child: MyElevatedButton(
                    colorButton: Colors.green,
                    title: 'Relatório',
                    onPressed: funcao,
                    buttonSize: Size(150, 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: MyTextField(label: 'Nome do paciente')),
                SizedBox(width: 20),
                Flexible(child: MyTextField(label: 'data de nascimento')),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: MyTextField(label: 'Nome da mãe')),
                SizedBox(width: 20),
                Flexible(child: MyTextField(label: 'nome do pai')),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: MyTextField(label: 'telefone')),
                SizedBox(width: 20),
                Flexible(child: MyTextField(label: 'email')),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 105),
              child: Row(
                children: [
                  MyElevatedButton(
                    colorButton: const Color.fromARGB(255, 1, 25, 67),
                    title: 'Adicionar novo paciente',
                    onPressed: funcao,
                    buttonSize: Size(300, 50),
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
