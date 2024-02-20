import 'package:clone_nubank/utils/colors_standard.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _income(context),
          _saveMoney(context),
          _securityLife(context),
          _friendsRecomended(context),
        ],
      ),
    );
  }

  _income(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
              text: "Seu ",
              style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(
              text: "informe de rendimentos de\n",
              style: TextStyle(color: backgroundColor, fontSize: 16)),
          const TextSpan(
              text: "2023 já está...",
              style: TextStyle(color: Colors.black, fontSize: 16)),
        ]),
      ),
    );
  }

  _saveMoney(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
              text: "Chegou o ",
              style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(
              text: "débito \nautomático da fatura do...",
              style: TextStyle(color: backgroundColor, fontSize: 16)),
        ]),
      ),
    );
  }

  _securityLife(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
              text: "Conheça ",
              style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(
              text: "Nubank Vida\n ",
              style: TextStyle(color: backgroundColor, fontSize: 16)),
          const TextSpan(
              text: "um seguro simples\n e que cabe...",
              style: TextStyle(color: Colors.black, fontSize: 16)),
        ]),
      ),
    );
  }

  _friendsRecomended(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
              text: "Salve seus amigos \nda burocracia. ",
              style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(
              text: "Faça um...",
              style: TextStyle(color: backgroundColor, fontSize: 16)),
        ]),
      ),
    );
  }
}
