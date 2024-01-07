import 'package:figma_design_ui/Navigator/router_named.dart';
import 'package:figma_design_ui/Style/colors.dart';
import 'package:figma_design_ui/Style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AutorizFormsScreenWidget extends StatelessWidget {
  const AutorizFormsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        title: Text(
          'Log In',
          style: MyTextStyle.textStyleAppBar,
        ),
        actions: [
          IconAppBarWidget(),
        ],
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}

class IconAppBarWidget extends StatelessWidget {
  const IconAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ()=> context.goNamed(RouterNamed.registr),
      child: Text(
        'Registr',
        style: MyTextStyle.textStyleTextButton,
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          TextField(
            onChanged: null,
            decoration: InputDecoration(
              filled: true,
              fillColor: MyColor.easyGray,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(15.0),
              ),
              hintText: 'Email',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const PasswordTextFild(),
          const SizedBox(
            height: 15,
          ),
          const ButtonScreen()
        ],
      ),
    );
  }
}

class PasswordTextFild extends StatefulWidget {
  const PasswordTextFild({super.key});

  @override
  State<PasswordTextFild> createState() => _PasswordTextFildState();
}

class _PasswordTextFildState extends State<PasswordTextFild> {
  bool textPassword = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: textPassword,
      onChanged: null,
      decoration: InputDecoration(
        filled: true,
        fillColor: MyColor.easyGray,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(15.0),
        ),
        hintText: 'Password',
        suffixIcon: TextButton(
          child: Text(
            'Show',
            style: MyTextStyle.textStyleTextButton,
          ),
          onPressed: () {
            setState(() {
              textPassword = !textPassword;
            });
          },
        ),
      ),
    );
  }
}



class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 35,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(MyColor.easyGreen),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Log In',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: double.infinity,
          height: 35,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Forgot yoor password?',
              style: MyTextStyle.textStyleTextButton,
            ),
          ),
        ),
      ],
    );
  }
}
