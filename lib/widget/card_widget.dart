import 'package:flutter/material.dart';
import 'package:flutter_space_projects/class/item_class.dart';
import 'package:flutter_space_projects/pages/description.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return  DescriptionPage(box:box,);
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 5),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('This is the ${box.title} Description'),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
