import 'package:authendication/pages/dashbord_page.dart';
import 'package:authendication/responsive/responsive.dart';
import 'package:authendication/reusableWidget/commonTextField.dart';
import 'package:authendication/reusableWidget/common_button.dart';
import 'package:authendication/reusableWidget/font_style.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final isMobile = Responsive.isMobile(context);
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: !isMobile
            ? const EdgeInsets.only(left: 100, right: 20)
            : const EdgeInsets.only(left: 50, right: 20),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Get Started", style: AppTextStyle.headlinelarge),
              Text(
                'Please login to your account',
                style: AppTextStyle.headlineMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(fieldname: "UserName", controller: nameController),
              const SizedBox(
                height: 16,
              ),
              AppTextField(
                  fieldname: "Password", controller: passwordController),
              const SizedBox(
                height: 20,
              ),
              CommonButton(
                buttonName: "Login",
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return PieChartPage();
                      },
                    ));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
