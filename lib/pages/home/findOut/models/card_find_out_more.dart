import 'package:clone_nubank/utils/colors_standard.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardFindOutMore extends StatelessWidget {
  String imagem;
  String title;
  String description;
  String buttonText;

  CardFindOutMore(
      {super.key,
      required this.imagem,
      required this.buttonText,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image.asset(
            imagem,
            fit: BoxFit.cover,
            width: 230,
            height: 180,
          ),
          const SizedBox(height: 22),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            description,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 22),
          Container(
            margin: const EdgeInsets.only(left: 12),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(18)),
            child: Text(
              buttonText,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
