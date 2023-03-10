import 'package:cassiehub/Models/service.dart';
import 'package:cassiehub/widget/description.dart';
import 'package:cassiehub/widget/gallery.dart';
import 'package:cassiehub/widget/header.dart';
import 'package:cassiehub/widget/review.dart';
import 'package:flutter/material.dart';

class ServiceInfo extends StatelessWidget {
  final Service service;

  const ServiceInfo(this.service, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          HeaderSection(service),
          GallerySection(service),
          DescriptionSection(service),
          ReviewSection(service)
        ],
      ),
    );
  }
}
