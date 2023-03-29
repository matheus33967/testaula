import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora - Simples434"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // texto que mostra o resultado do calculo
            Text(
              "Resultado: $resultado",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            // Campo de Texto (input valor 1)
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Informe o Valor 1"),
              controller: t1,
            ),
            // Campo de Texto (input valor 2)
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Inforeme o Valor 2"),
              controller: t2,
            ),

            // espaço depois do imput
            const Padding(padding: EdgeInsets.only(top: 20)),

            // nova linha (row)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.deepOrange,
                  onPressed: somar,
                  child: const Text(
                    "+",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),

            const Padding(padding: EdgeInsets.only(top: 20)),

            // botao de limpar
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              MaterialButton(
                  color: Colors.green,
                  onPressed: limpar,
                  child: const Text("Limpar"))
            ])
          ],
        ),
      ),
    );

    // função que soma os valores
  }

  // ignore: prefer_typing_uninitialized_variables
  var num1;
  // ignore: prefer_typing_uninitialized_variables
  var num2;
  var resultado = 0;

  TextEditingController t1 = TextEditingController(text: "");
  TextEditingController t2 = TextEditingController(text: "");

  void somar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void limpar() {
    setState(() {
      t1.text = "";
      t2.text = "";
      resultado = 0;
    });
  }
}
// nada deve ser adiconado depois de return, não sera lido pelo flutter
