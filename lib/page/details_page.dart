import 'package:cassiehub/colors.dart';
import 'package:cassiehub/widget/detailssilver.dart';
import 'package:flutter/material.dart';

import '../Models/service.dart';
import '../widget/serviceinfo.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage(this.service, {super.key});
  final Service service;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              service: service,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: ServiceInfo(service),
          )
        ],
      ),
    );
  }
}
