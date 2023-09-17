import 'package:flutter/material.dart';
import 'package:home_control_ui/src/screens/bottom_sheets/second_bottom_sheet.dart';

import '../../constants/colors.dart';
import '../../constants/image_strings.dart';

class FirstBottomSheet extends StatelessWidget {
  const FirstBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            ),
            context: context,
            builder: (context) {
              return SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // --CROSS ICON
                      const Align(
                        alignment: Alignment.topRight,
                        child: Image(
                          image: AssetImage(kAddIcon),
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // -- ROOM NAME TEXT
                      const Text(
                        'Room Name',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // -- TEXT FIELD

                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: kkButtonColor),
                            // Change the color to your desired color
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),

                      // -- Continue button & Second Bottom sheet
                      const SizedBox(
                        width: double.infinity,
                        child: SecondNavigation(),
                      ),
                      const SizedBox(height: 8),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'back',
                            style: TextStyle(
                              color: kkButtonColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      icon: const Image(
        image: AssetImage(kAddIcon),
        height: 20,
        width: 20,
        fit: BoxFit.cover,
      ),
    );
  }
}
