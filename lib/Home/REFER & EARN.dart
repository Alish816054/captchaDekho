import 'package:captchadekho/appbar/appbar.dart';
import 'package:flutter/material.dart';

class REFERANDEARN extends StatelessWidget {
  const REFERANDEARN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back,
        title: ("REFER & EARN"),
        backgroundColor: Color(0xFF8664E7),
      ),
    );
  }
}
