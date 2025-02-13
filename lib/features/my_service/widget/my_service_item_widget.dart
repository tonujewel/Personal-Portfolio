import 'package:flutter/material.dart';

import '../../../core/models/my_services_model.dart';
import '../../../core/utils/color_manager.dart';

class MyServiceItemWidget extends StatelessWidget {
  const MyServiceItemWidget({super.key, required this.data});

  final MyServicesModel data;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.secondaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              data.img,
              height: size.width * 0.15,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(data.desc.length, (index) {
                      return Text(
                        "* ${data.desc[index]}",
                        style: const TextStyle(fontSize: 14),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
