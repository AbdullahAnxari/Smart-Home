import 'package:flutter/material.dart';
import 'package:home_control_ui/src/screens/bottom_sheets/third_bottom_sheet.dart';

import '../../constants/colors.dart';
import '../../constants/elevated_button.dart';
import '../../constants/image_strings.dart';

class SecondNavigation extends StatelessWidget {
  const SecondNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              // <-- SEE HERE
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0),
              ),
            ),
            builder: (context) {
              return Container(
                height: 900,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.close)),
                    // --Images row

                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 171,
                          height: 120,
                          child: Image(
                            image: AssetImage(kAddRoom3),
                          ),
                        ),
                        SizedBox(
                          width: 171,
                          height: 120,
                          child: Image(
                            image: AssetImage(kAddRoom4),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 171,
                          height: 120,
                          child: Image(
                            image: AssetImage(kAddRoom5),
                          ),
                        ),
                        SizedBox(
                          width: 171,
                          height: 120,
                          child: Image(
                            image: AssetImage(kAddRoom6),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(height: 50),
                    // -- Continue button & Third Bottom sheet
                    const ThirdBottomSheet(),

                    const SizedBox(height: 8),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'back',
                          style: TextStyle(
                            color: kkButtonColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      },
      text: 'Continue',
    );
  }
}
