import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          label: 'Full Name',
          margin: EdgeInsets.only(bottom: 20),
          placeholder: 'Your full name',
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          label: 'Email Address',
          margin: EdgeInsets.only(bottom: 20),
          placeholder: 'Your email address',
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          label: 'Password',
          isObscureText: true,
          margin: EdgeInsets.only(bottom: 20),
          placeholder: 'Your password',
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          label: 'Hobby',
          margin: EdgeInsets.only(bottom: 30),
          placeholder: 'Your hobby',
        );
      }

      Widget submitButton() {
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          'Terms and Conditions',
          style: grayTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMagin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
