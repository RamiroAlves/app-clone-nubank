import 'package:clone_nubank/pages/home/account/account.dart';
import 'package:clone_nubank/pages/home/actions/menu_itens.dart';
import 'package:clone_nubank/pages/home/creditsCard/credit_card.dart';
import 'package:clone_nubank/pages/home/creditsCard/my_credits_card_page.dart';
import 'package:clone_nubank/pages/home/findOut/find_out.dart';
import 'package:clone_nubank/pages/home/investments/investments.dart';
import 'package:clone_nubank/pages/home/model/header.dart';
import 'package:clone_nubank/pages/home/notification/notification_page.dart';
import 'package:clone_nubank/pages/home/security/security_life.dart';
import 'package:clone_nubank/pages/home/shopping/shopping_view.dart';
import 'package:clone_nubank/utils/colors_standard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Header(),
              AccountNubank(),
              MenuItens(),
              Divider(thickness: 1.6),
              MyCreditCards(),
              Divider(),
              NotificationsPage(),
              Divider(thickness: 1.6),
              CreditCard(),
              Divider(thickness: 1.6),
              Investments(),
              Divider(thickness: 1.6),
              SecurityLife(),
              Divider(thickness: 1.6),
              ShoppingView(),
              Divider(thickness: 1.6),
              FindOutMore(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ));
  }
}
