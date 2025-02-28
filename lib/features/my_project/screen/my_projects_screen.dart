import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_portfolio/core/utils/app_constant.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/size_manager.dart';
import '../../dashboard/screen/dashboard_screen.dart';
import '../models/my_project_model.dart';

class MyProjectsScreen extends StatelessWidget {
  const MyProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: size.height * .15,
            left: 0,
            child: Image.asset(
              'assets/images/left_1.png',
              height: size.width * .15,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/right_bottom.png',
              width: size.width * .13,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/top_center.png',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeManager.webHorizontalPadding, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(size.height * .03),
                BigTitleText(title1: "My", title2: 'Projects'),
                Gap(size.height * .03),
                GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  shrinkWrap: true,
                  childAspectRatio: 1 / .7,
                  children: List.generate(
                    AppConstant.myProjectsList.length,
                    (index) => ProjectItemWidget(data: AppConstant.myProjectsList[index]),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectItemWidget extends StatelessWidget {
  const ProjectItemWidget({super.key, required this.data});

  final MyProjectModel data;

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
                  data.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * .016,
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
                      data.image,
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
