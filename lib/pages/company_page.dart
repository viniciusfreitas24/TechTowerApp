import 'package:flutter/material.dart';
import 'package:TechTowerApp/components/my_drawer.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        title: const Text("Sobre Nós"),
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset(
              'assets/logo.png', // Caminho correto para o seu asset
              height: 200,
              width: 200,
              fit: BoxFit.cover, // Ajuste para cobrir o tamanho definido
            ),
            
            const SizedBox(height: 25),
            Text(
              'A Tech Tower é uma loja online de eletrônicos com foco em produtos '
              'de alta qualidade como smartphones e acessórios. Destaca-se pela '
              'oferta de marcas renomadas como Samsung e Motorola, garantindo uma '
              'experiência de compra segura e intuitiva, além de um serviço ao '
              'cliente excepcional. A empresa investe em pesquisa para manter-se '
              'atualizada com as últimas tecnologias do mercado, reforçando seu '
              'compromisso com a inovação.',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
