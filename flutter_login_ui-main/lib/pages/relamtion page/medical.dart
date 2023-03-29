import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/profile_page.dart';

import '../new_reclamation.dart';
import '../widgets/widgets.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}): super(key:key);

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  final List<String> complaintTypes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Medical'),
      ),
      body: SingleChildScrollView(
        child: Container( decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/street.jpg'),
            fit: BoxFit.cover,
          ),
        ),
          height: MediaQuery.of(context).size.height ,
          child: Column(
            children: [
              alignCard(icon: CupertinoIcons.exclamationmark_octagon, title: 'Erreurs médicales', page: NewReclamationForm(complaintTypes: ['Erreurs médicales ','Sécurité du patient','Qualité des soins','Problèmes de paiement','Conduite professionnelle de la santé']), context: context),
              alignCard(icon: CupertinoIcons.eyedropper, title: 'Sécurité du patient',  page: NewReclamationForm(complaintTypes:['Sécurité du patient','Erreurs médicales ','Qualité des soins','Problèmes de paiement','Conduite professionnelle de la santé']), context: context),
              alignCard(icon: CupertinoIcons.gauge_badge_plus, title: 'Qualité des soins',  page: NewReclamationForm(complaintTypes: ['Qualité des soins','Erreurs médicales ','Sécurité du patient','Problèmes de paiement','Conduite professionnelle de la santé']), context: context),
              alignCard(icon: Icons.monetization_on_outlined, title: 'Problèmes de paiement',  page: NewReclamationForm(complaintTypes: ['Problèmes de paiement','Erreurs médicales ','Sécurité du patient','Qualité des soins','Conduite professionnelle de la santé']), context: context),
              alignCard(icon: Icons.mark_chat_read_outlined, title: 'Autre', page: NewReclamationForm(complaintTypes:['Conduite professionnelle de la santé','Erreurs médicales ','Sécurité du patient','Qualité des soins','Problèmes de paiement',]), context: context),
            ],
          ),
    ),
      )
    );
  }
}
