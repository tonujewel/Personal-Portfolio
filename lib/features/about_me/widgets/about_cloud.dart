import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/color_manager.dart';

class AboutCloud extends StatelessWidget {
  const AboutCloud({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text('About Cloud'),
        Text('Cloud is a software engineer'),
        Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: size.width * 0.8,
                height: size.width * 0.8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFBD2B2), // Peach/orange color - adjust as needed
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Hello bubble with decoration
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38),
                        border: Border.all(color: ColorManager.dartColor),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                      child: Text(
                        'Hello!',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Lufga',
                        ),
                      ),
                    ),
                    Positioned(
                      top: -10,
                      right: -5,
                      child: SvgPicture.asset('assets/svg/hello_decoration.svg'),
                    ),
                  ],
                ),
    
                SizedBox(height: 24),
    
                // Name section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I\'m ',
                      style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                    Text(
                      'Jenny,',
                      style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'Urbanist',
                        color: Color(0xFFF4A261), // Orange color - adjust as needed
                      ),
                    ),
                  ],
                ),
    
                Text(
                  'Product Designer',
                  style: TextStyle(
                    fontSize: 42,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.bold,
                  ),
                ),
    
                SizedBox(height: 32),
    
                // Description and experience section
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Jenny's Exceptional product design ensure our website's success.\nHighly Recommended",
                        style: TextStyle(
                          color: Color(0xFF344053),
                          fontFamily: 'Lufga',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: List.generate(
                              5,
                              (index) => Icon(Icons.star, color: Color(0xFFF4A261)),
                            ),
                          ),
                          Text(
                            '10 Years',
                            style: TextStyle(
                              fontSize: 47,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Experience',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Lufga',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
    
                SizedBox(height: 32),
    
                // Action buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF4A261),
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text('Portfolio'),
                    ),
                    SizedBox(width: 16),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text('Hire me'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}


// Stack(
//   children = [
//     // Background circle
//     Positioned(
//       bottom: 0,
//       right: 0,
//       child: Container(
//         width: size.width * 0.8,
//         height: size.width * 0.8,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Color(0xFFFBD2B2), // Peach/orange color - adjust as needed
//         ),
//       ),
//     ),
    
//     Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         // Hello bubble with decoration
//         Stack(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(38),
//                 border: Border.all(color: ColorManager.dartColor),
//               ),
//               padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
//               child: Text(
//                 'Hello!',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'Lufga',
//                 ),
//               ),
//             ),
//             Positioned(
//               top: -10,
//               right: -5,
//               child: SvgPicture.asset('assets/svg/hello_decoration.svg'),
//             ),
//           ],
//         ),
        
//         SizedBox(height: 24),
        
//         // Name section
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'I'm ',
//               style: TextStyle(
//                 fontSize: 48,
//                 fontFamily: 'Urbanist',
//               ),
//             ),
//             Text(
//               'Jenny,',
//               style: TextStyle(
//                 fontSize: 48,
//                 fontFamily: 'Urbanist',
//                 color: Color(0xFFF4A261), // Orange color - adjust as needed
//               ),
//             ),
//           ],
//         ),
        
//         Text(
//           'Product Designer',
//           style: TextStyle(
//             fontSize: 42,
//             fontFamily: 'Urbanist',
//             fontWeight: FontWeight.bold,
//           ),
//         ),
        
//         SizedBox(height: 32),
        
//         // Description and experience section
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               flex: 2,
//               child: Text(
//                 "Jenny's Exceptional product design ensure our website's success.\nHighly Recommended",
//                 style: TextStyle(
//                   color: Color(0xFF344053),
//                   fontFamily: 'Lufga',
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: List.generate(
//                       5,
//                       (index) => Icon(Icons.star, color: Color(0xFFF4A261)),
//                     ),
//                   ),
//                   Text(
//                     '10 Years',
//                     style: TextStyle(
//                       fontSize: 47,
//                       fontFamily: 'Urbanist',
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     'Experience',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontFamily: 'Lufga',
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
        
//         SizedBox(height: 32),
        
//         // Action buttons
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xFFF4A261),
//                 padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//               child: Text('Portfolio'),
//             ),
//             SizedBox(width: 16),
//             OutlinedButton(
//               onPressed: () {},
//               style: OutlinedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//               child: Text('Hire me'),
//             ),
//           ],
//         ),
//       ],
//     ),
 
 
//   ],
// )