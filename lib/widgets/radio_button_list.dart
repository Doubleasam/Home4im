import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class RadioButtonList extends StatefulWidget {
  final List<String> texts;
  final Function(String) onChanged;
  final String groupValue;

  const RadioButtonList({
    super.key,
    required this.texts,
    required this.onChanged,
    required this.groupValue,
  });

  @override
  _RadioButtonListState createState() => _RadioButtonListState();
}

class _RadioButtonListState extends State<RadioButtonList> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.groupValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.texts.map((text) {
        return Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Row(
            children: [
              Radio(
                activeColor: Colors.black,
                value: text,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
              Text(
                text,
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
