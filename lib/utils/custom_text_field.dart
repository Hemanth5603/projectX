import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.h,
    required this.w,
    required this.maxLines,
    required this.keyboardType,
    required this.hint,
  });
  final double h;
  final double w;
  final int maxLines;
  final TextInputType keyboardType;
  final String hint;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: widget.w * 0.09, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: widget.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const []),
            child: TextField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 13, 8, 8),
                hintText: widget.hint,
                enabledBorder: getBorder(),
                focusedBorder: getBorder(),
                focusColor: Colors.black,
                prefixStyle: const TextStyle(color: Colors.black),
                hintStyle: const TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 16,
                    color: Color.fromARGB(255, 76, 76, 76)),
                //prefixIcon: Icon(Icons.no,color: Color.fromARGB(200, 0, 44, 107)),
              ),
              maxLines: widget.maxLines,
              keyboardType: widget.keyboardType,
            ),
          ),
        ],
      ),
    );
  }
}

OutlineInputBorder getBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    borderSide: BorderSide(width: 1.5, color: Color.fromARGB(255, 204, 32, 46)),
    gapPadding: 2,
  );
}
