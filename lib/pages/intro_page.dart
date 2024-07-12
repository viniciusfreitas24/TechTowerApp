import "package:flutter/material.dart";
import "../components/my_button.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // logo
       Image.asset('assets/logo.png', width: 200, height: 200),

          
          //titulo
          const Text("Tech Tower",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),

          const SizedBox(height: 25),

          Text("Produtos de Qualidade",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              )),

          const SizedBox(height: 25),
          //button
          MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: const Icon(Icons.arrow_forward)),
        ])));
  }
}
