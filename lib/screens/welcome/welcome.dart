import 'package:flutter/material.dart';
import 'package:read_tracker/constants/colors.dart';
import 'package:read_tracker/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final devHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: devHeight * 0.58,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/welcome.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: devHeight * 0.02,
            ),
            const SizedBox(
              width: 300,
              child: Text(
                'Never miss a Reading Day',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: MyColors.textBlue),
              ),
            ),
            SizedBox(
              height: devHeight * 0.02,
            ),
            const SizedBox(
                width: 350,
                child: Text(
                  'Set your reading goals. Get Reminders. Track your progress. Read more.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: MyColors.textGrey),
                )),
            SizedBox(height: devHeight * 0.08),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(right: 7.5),
                            child: CustomButton(
                              text: 'Signup',
                              onPressed: () => {print('Signup Pressed')},
                            ))),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7.5),
                        child: Expanded(
                            child: CustomButton(
                          text: 'Login',
                          isOutlined: true,
                          onPressed: () => {print('Login Pressed')},
                        )),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
