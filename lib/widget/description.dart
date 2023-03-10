import 'package:cassiehub/Models/service.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DescriptionSection extends StatelessWidget {
  final Service service;
  const DescriptionSection(this.service, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ReadMoreText(
        service.descriptions,
        trimLines: 2,
        colorClickableText: const Color(0xFF5F67EA),
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Lire Plus',
        trimExpandedText: ' reduire',
        style: TextStyle(
          color: Colors.grey.withOpacity(0.7),
          height: 1.5,
        ),
      ),
    );
  }
}
