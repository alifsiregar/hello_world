import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_world/Screens/Login/components/background.dart';
import 'package:hello_world/components/rounded_input_field.dart';
import 'package:hello_world/components/text_field_container.dart';
import 'package:hello_world/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold)),
        SvgPicture.asset("assets/icons/login.svg", height: size.height * 0.35),
        RoundedInputField(hintText: "Your Email", onChanged: (value) {}),
        TextFieldContainer(
          child: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                  suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
                  border: InputBorder.none)),
        )
      ],
    ));
  }
}
