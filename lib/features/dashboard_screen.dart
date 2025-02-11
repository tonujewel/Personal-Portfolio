import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_portfolio/core/color_manager.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HeaderSection(),
        ],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 110, vertical: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 40,
              ),
              Gap(16),
              Text(
                "Jewel Rana",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
              ),
              Gap(60),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "Services",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "Services",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "Blog",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withAlpha(30)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "CONTACT",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
                ),
              )
            ],
          ),
          Text(
            'Welcome to Cristino',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Explore our collection of premium products.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: Text('Shop Now'),
          ),
        ],
      ),
    );
  }
}
