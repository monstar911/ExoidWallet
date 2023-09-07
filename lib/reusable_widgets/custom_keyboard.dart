import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Custom keyboard
class CustomKeyBoard extends StatefulWidget {
  /// Theme for the widget. Read more [PinTheme]
  final PinTheme pinTheme;

  /// special key to be displayed on the widget. Default is '.'
  final Widget? specialKey;

  /// on changed function to be called when the amount is changed.
  final Function(String)? onChanged;

  /// on competed function to be called when the pin code is complete.
  final Function(String)? onCompleted;

  /// function to be called when special keys are pressed.
  final Function()? specialKeyOnTap;

  /// maximum length of the amount.
  final int maxLength;

  const CustomKeyBoard({
    Key? key,
    required this.maxLength,
    this.pinTheme = const PinTheme.defaults(),
    this.specialKey,
    this.onChanged,
    this.specialKeyOnTap,
    this.onCompleted,
  })  : assert(maxLength > 0),
        super(key: key);

  @override
  _CustomKeyBoardState createState() => _CustomKeyBoardState();
}

class _CustomKeyBoardState extends State<CustomKeyBoard> {
  String value = "";

  Widget buildNumberButton({int? number, Widget? icon, Function()? onPressed}) {
    getChild() {
      if (icon != null) {
        return icon;
      } else {
        return Text(
          number?.toString() ?? "",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            letterSpacing: -1,
            fontFamily: 'Montserrat',
            color: widget.pinTheme.keysColor,
          ),
        );
      }
    }

    return Expanded(
        child: CupertinoButton(
            key: icon?.key ?? Key("btn$number"),
            onPressed: onPressed,
            child: getChild()));
  }

  Widget buildNumberRow(List<int> numbers) {
    List<Widget> buttonList = numbers
        .map((buttonNumber) => buildNumberButton(
              number: buttonNumber,
              onPressed: () {
                if (value.length < widget.maxLength) {
                  setState(() {
                    value = value + buttonNumber.toString();
                  });
                }
                widget.onChanged!(value);
                if (value.length >= widget.maxLength &&
                    widget.onCompleted != null) {
                  widget.onCompleted!(value);
                }
              },
            ))
        .toList();
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: buttonList,
    ));
  }

  Widget buildSpecialRow() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildNumberButton(
            icon: widget.specialKey ??
                const Icon(
                  Icons.circle,
                  key: Key('specialKey'),
                  color: Colors.transparent,
                  size: 7,
                ),
            onPressed: widget.specialKeyOnTap ?? () {},
          ),
          buildNumberButton(
            number: 0,
            onPressed: () {
              if (value.length < widget.maxLength) {
                setState(() {
                  value = value + 0.toString();
                });
              }
              widget.onChanged!(value);
              if (value.length >= widget.maxLength &&
                  widget.onCompleted != null) {
                widget.onCompleted!(value);
              }
            },
          ),
          buildNumberButton(
              icon: Icon(
                Icons.cancel_outlined,
                key: const Key('backspace'),
                color: widget.pinTheme.keysColor,
              ),
              onPressed: () {
                if (value.isNotEmpty) {
                  setState(() {
                    value = value.substring(0, value.length - 1);
                  });
                }
                widget.onChanged!(value);
              }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            buildNumberRow([1, 2, 3]),
            buildNumberRow([4, 5, 6]),
            buildNumberRow([7, 8, 9]),
            buildSpecialRow(),
          ],
        ),
      ),
    );
  }
}

enum PinCodeFieldShape { box, underline, circle }

class PinTheme {
  /// Colors of the input fields which have inputs. Default is [Colors.black]
  final Color keysColor;

  /// Color of the texts and labels
  final Color? textColor;

  const PinTheme.defaults({
    this.textColor = Colors.blue,
    this.keysColor = Colors.black,
  });

  factory PinTheme({
    Color? textColor,
    Color? keysColor,
  }) {
    const defaultValues = PinTheme.defaults();
    return PinTheme.defaults(
      textColor: textColor ?? defaultValues.textColor,
      keysColor: keysColor ?? defaultValues.keysColor,
    );
  }
}
