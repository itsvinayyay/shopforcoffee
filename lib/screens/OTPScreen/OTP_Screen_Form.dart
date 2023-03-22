import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/sizeconfig.dart';

class buildForm extends StatefulWidget {
  const buildForm({
    Key? key,
  }) : super(key: key);

  @override
  State<buildForm> createState() => _buildFormState();
}

class _buildFormState extends State<buildForm> {
  late FocusNode pin1;
  late FocusNode pin2;
  late FocusNode pin3;
  late FocusNode pin4;

  @override
  void initState() {
    pin1 = FocusNode();
    pin2 = FocusNode();
    pin3 = FocusNode();
    pin4 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    pin1.dispose();
    pin2.dispose();
    pin3.dispose();
    pin4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getproportionatescreenwidth(160),
            child: TextFormField(
              focusNode: pin1,
              autofocus: true,
              textInputAction: TextInputAction.next,
              onChanged: (value) {
                if (value.length == 1) {
                  pin1.unfocus();
                  FocusScope.of(context).requestFocus(pin2);
                }
              },

              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: kOTPboxesDecoration,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            width: getproportionatescreenwidth(160),
            child: TextFormField(
              focusNode: pin2,
              textInputAction: TextInputAction.next,
              onChanged: (value) {
                if (value.length == 1) {
                  pin2.unfocus();
                  FocusScope.of(context).requestFocus(pin3);
                }
              },
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: kOTPboxesDecoration,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            width: getproportionatescreenwidth(160),
            child: TextFormField(
              focusNode: pin3,
              textInputAction: TextInputAction.next,
              onChanged: (value) {
                if (value.length == 1) {
                  pin3.unfocus();
                  FocusScope.of(context).requestFocus(pin4);
                }
              },
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: kOTPboxesDecoration,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            width: getproportionatescreenwidth(160),
            child: TextFormField(
              focusNode: pin4,
              textInputAction: TextInputAction.done,
              onChanged: (value) {
                if (value.length == 1) {
                  pin4.unfocus();
                }
              },
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              keyboardType: TextInputType.number,
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: kOTPboxesDecoration,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
