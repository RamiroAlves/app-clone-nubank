import 'package:clone_nubank/pages/home/findOut/models/card_find_out_more.dart';
import 'package:flutter/material.dart';

class FindOutMore extends StatelessWidget {
  const FindOutMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Descubra mais',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          findOutCard(),
        ],
      ),
    );
  }

  findOutCard() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CardFindOutMore(
                imagem: 'assets/images/parcele-compras.jpeg',
                buttonText: 'Conhecer',
                description: 'Sua liberdade financeira \n começa com você...',
                title: 'Parcele compras no app'),
            const SizedBox(width: 20),
            CardFindOutMore(
                imagem: 'assets/images/portabilidade-salario.jpg',
                buttonText: 'Conhecer',
                description: 'Sua liberdade financeira \n começa com você...',
                title: 'Portabilidade de salário'),
            const SizedBox(width: 20),
            CardFindOutMore(
                imagem: 'assets/images/indique-amigos.jpg',
                buttonText: 'Indicar',
                description:
                    'Mostre aos seus amigos \n como é facil ter uma vida...',
                title: 'Indique seus amigos'),
          ],
        ));
  }
}
