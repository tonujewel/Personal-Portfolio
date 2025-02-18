import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/utils/color_manager.dart';

import '../../../core/utils/size_manager.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/primary_button.dart';
import '../../dashboard/screen/dashboard_screen.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.bgColor,
      padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
      child: Column(
        children: [
          BigTitleText(title1: "Contact", title2: 'With Me'),
          const Gap(20),
          Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 400, // Adjust width
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get In Touch",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF512D13),
                            ),
                          ),
                          SizedBox(height: 15),
                          CustomTextField(
                            hints: 'Email',
                          ),
                          SizedBox(height: 15),
                          CustomTextField(
                            hints: 'Subject',
                          ),
                          SizedBox(height: 15),
                          CustomTextField(
                            hints: 'Message',
                            maxLines: 5,
                          ),
                          Gap(20),
                          Align(
                            alignment: Alignment.centerRight,
                            child: PrimaryButton(
                              onPressed: () {},
                              text: 'Submit'.toUpperCase(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(30),
                  Expanded(child: ContactInfo()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Contact Me", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Gap(16),
        Text(
          'Need a custom mobile app? Let\'s turn your idea into a seamless and powerful application. Get in touch, and let\'s build something great together!',
          style: TextStyle(fontSize: 16),
        ),
        Gap(16),
        ContactRow(icon: Icons.location_on, text: "Khilkhet, Dhaka, Bangladesh"),
        ContactRow(icon: Icons.phone, text: "+880 1744 960015"),
        ContactRow(icon: Icons.email, text: "tonujewel@gmail.com"),
        ContactRow(icon: Icons.web, text: "jewelrana.dev"),
      ],
    );
  }
}

class ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFE3876F),
            radius: 22,
            child: Icon(icon, color: Colors.white),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
