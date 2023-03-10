import 'package:cassiehub/Models/service.dart';
import 'package:flutter/material.dart';

class ReviewSection extends StatelessWidget {
  final Service service;
  const ReviewSection(this.service, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Notes et avis',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'view',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(10, 158, 158, 158),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                service.score.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.amber,
                      ),
                      const Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.amber,
                      ),
                      const Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.amber,
                      ),
                      const Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.amber,
                      ),
                      Icon(Icons.star,
                          size: 25, color: Colors.grey.withOpacity(0.3)),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${service.review.toString()} avis',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
