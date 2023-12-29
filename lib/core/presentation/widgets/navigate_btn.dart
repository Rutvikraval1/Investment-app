import 'package:flutter/material.dart';

class NavigateBtn extends StatefulWidget {
  final Function onPressed;
  final String text;
  const NavigateBtn({super.key, required this.onPressed, required this.text});

  @override
  State<NavigateBtn> createState() => _NavigateBtnState();
}

class _NavigateBtnState extends State<NavigateBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width,
      height:  56,
      child: ElevatedButton(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
          backgroundColor: MaterialStateProperty.all(Color(0xFF1C2C56)),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
        ),
        child: Text(
          widget.text,
          style:  TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        onPressed: () {
          widget.onPressed();
        },
      ),
    );
  }
}
