import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/models/my_services_model.dart';

class MyServiceItemWidget extends StatelessWidget {
  const MyServiceItemWidget({super.key, required this.data});

  final MyServicesModel data;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withAlpha(60),
              width: 2,
            ),
            color: Colors.white.withAlpha(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(20),
                blurRadius: 15,
                spreadRadius: 2,
                offset: Offset(0, -5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  data.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * .014,
                  ),
                ),
              ),
              Divider(
                color: Colors.white.withAlpha(60),
                thickness: 2,
                height: 0,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      data.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
