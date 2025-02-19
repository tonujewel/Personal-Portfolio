import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileIntro extends StatelessWidget {
  const ProfileIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Hello icon and text
        SizedBox(
          width: size.width * 0.1,
          child: Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset('assets/svg/hello_top.svg'),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38),
            border: Border.all(color: Colors.black26),
          ),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          child: Text(
            'Hello!',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),

        SizedBox(height: 20),

        // Name and designation
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I’m ',
              style: TextStyle(fontSize: size.width * 0.05),
            ),
            Text(
              'Jewel,',
              style: TextStyle(
                fontSize: size.width * 0.05,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          'Mobile Application Developer',
          style: TextStyle(fontSize: size.width * 0.05),
        ),

        SizedBox(height: 20),

        // Profile Image with circular background
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: size.width * 0.6,
              height: size.width * 0.6,
              decoration: BoxDecoration(
                color: Colors.orangeAccent.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
            ),
            CircleAvatar(
              radius: size.width * 0.2,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
          ],
        ),

        SizedBox(height: 20),

        // Review and Experience
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jewel's exceptional development skills ensured our app's success. Highly recommended!",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(5, (index) => Icon(Icons.star, color: Colors.orangeAccent)),
                ),
                Text(
                  '10 Years',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text('Experience'),
              ],
            ),
          ],
        ),

        SizedBox(height: 20),

        // Portfolio and Hire me buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
              child: Text('Portfolio'),
            ),
            SizedBox(width: 20),
            OutlinedButton(
              onPressed: () {},
              child: Text('Hire me'),
            ),
          ],
        ),
      ],
    );
  }
}
