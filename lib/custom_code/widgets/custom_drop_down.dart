// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dropdown_button2/dropdown_button2.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown(
      {Key? key,
      this.width,
      this.height,
      this.image,
      required this.items,
      required this.imageFirst})
      : super(key: key);

  final double? width;
  final double? height;
  final String? image;
  final List<String> items;
  final bool imageFirst;
  @override
  State<CustomDropDown> createState() => CustomDropDownState();
}

class CustomDropDownState extends State<CustomDropDown> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        items: widget.items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Row(
                    children: [
                      if (widget.imageFirst)
                        Image.network(
                          widget.image ??
                              'https://upload.wikimedia.org/wikipedia/commons/5/59/Empty.png?20091205084734',
                          width: 20,
                          height: 20,
                        ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF535967),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (!widget.imageFirst)
                        Image.network(
                          widget.image ??
                              'https://upload.wikimedia.org/wikipedia/commons/5/59/Empty.png?20091205084734',
                          width: 20,
                          height: 20,
                        ),
                    ],
                  ),
                ))
            .toList(),
        value: selectedValue ?? widget.items[0],
        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
        buttonHeight: widget.height ?? 40,
        buttonWidth: widget.width ?? 200,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Color(0xFFEBEDF6),
        ),
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 200,
        dropdownWidth: widget.width ?? 200,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Color(0xFFEBEDF6),
        ),
        dropdownElevation: 0,
        scrollbarRadius: const Radius.circular(40),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: Offset(0, widget.height ?? 40),
      ),
    );
  }
}
