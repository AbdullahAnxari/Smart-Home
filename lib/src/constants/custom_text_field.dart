import 'package:flutter/material.dart';
import 'package:home_control_ui/src/constants/colors.dart';


class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final IconData icon;
  var obscureValue;

  CustomTextField({
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.keyboardType,
    required this.onChanged,
    required this.icon,
    this.obscureValue,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isSelected = false;
  var obscureValue = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: widget.obscureValue,
        controller: widget.controller,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: Icon(
            widget.icon,
            color: _isSelected ? kBlackColour : kGreyColour,
          ),
          suffixIcon: widget.obscureValue
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.obscureValue = !widget.obscureValue;
                    });
                  },
                  child: widget.obscureValue
                      ? Icon(
                          Icons.visibility_off,
                          color: kGreyColour,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: kGreyColour,
                        ),
                )
              : const SizedBox.shrink(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: _isSelected ? kBlackColour : kGreyColour,
            ),
          ),
        ),
        onTap: () {
          setState(() {
            _isSelected = true;
          });
        });
  }
}

// validator: (value) {
//   if (value!.isEmpty) {
//     return 'Enter Email';
//   }
//   return null;
// },
