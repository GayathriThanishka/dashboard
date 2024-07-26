import 'package:authendication/pages/components/auth_field.dart';
import 'package:authendication/responsive/responsive.dart';
import 'package:authendication/reusableWidget/font_style.dart';
import 'package:authendication/reusableWidget/pallets.dart';
import 'package:flutter/material.dart';

class AuthendicationPage extends StatefulWidget {
  const AuthendicationPage({super.key});

  @override
  State<AuthendicationPage> createState() => _AuthendicationPageState();
}

class _AuthendicationPageState extends State<AuthendicationPage> {
  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Scaffold(
        body: !isMobile
            ? Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Pallets.primaryColor,
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "WelCome To Happy Bus",
                                  style: AppTextStyle.headlinelarge!
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                            ),
                            Image.asset("assets/bus.png")
                          ],
                        ),
                      )),
                  const Expanded(flex: 2, child: AuthField())
                ],
              )
            : Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: AuthField(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      color: Pallets.primaryColor,
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  "WelCome To Happy Bus",
                                  style: AppTextStyle.headlinelarge!
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            "assets/bus.png",
                            alignment: Alignment.bottomLeft,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ));
  }
}
