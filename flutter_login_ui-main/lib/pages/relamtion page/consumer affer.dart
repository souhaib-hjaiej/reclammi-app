import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/profile_page.dart';

import '../new_reclamation.dart';
import '../widgets/widgets.dart';

class consumer extends StatefulWidget {
  const consumer({Key? key}): super(key:key);


  @override
  State<consumer> createState() => _consumerState();
}

class _consumerState extends State<consumer> {
   List<String> complaintTypes = ['Type 1', 'Type 2', 'Type 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('consumer affer'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/street.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height ,
          child: Column(
            children: [
              alignCard(icon: CupertinoIcons.train_style_one, title: 'Problèmes de service client',  page: NewReclamationForm(complaintTypes: ['Problèmes de service client','problèmes de paiement','service quality','Consumer fraud','autre']), context: context),
              alignCard(icon: CupertinoIcons.train_style_one, title: 'problèmes de paiement', page: NewReclamationForm(complaintTypes: ['problèmes de paiement','Problèmes de service client','service quality','Consumer fraud','autre']), context: context),
              alignCard(icon: CupertinoIcons.train_style_one, title: 'service quality',  page: NewReclamationForm(complaintTypes: ['service quality','Problèmes de service client','problèmes de paiement','Consumer fraud','autre']), context: context),
              alignCard(icon: CupertinoIcons.train_style_one, title: 'Consumer fraud',  page: NewReclamationForm(complaintTypes: ['Consumer fraud','Problèmes de service client','problèmes de paiement','service quality','autre']), context: context),
              alignCard(icon: CupertinoIcons.train_style_one, title: 'autre',  page: NewReclamationForm(complaintTypes: ['autre','Problèmes de service client','problèmes de paiement','service quality','Consumer fraud',]), context: context),
            ],
          ),
        )
    );
  }
}
