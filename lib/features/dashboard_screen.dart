import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cristino'),
        centerTitle: false,
        elevation: 0,
      ),
      body: ListView(
        children: [HeaderSection()],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
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
