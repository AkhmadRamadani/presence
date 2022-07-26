import 'package:flutter/material.dart';
import 'package:presence/button/main_button.dart';
import 'package:presence/page/main_app.dart';
import 'package:presence/service/global_data.dart';
import 'package:presence/text/title_group.dart';

class PermitConfirmation extends StatelessWidget {
  const PermitConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: GlobalData.spacing * 5,
            horizontal: GlobalData.spacing * 3,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: GlobalData.spacing * 5,
                ),
                child: Image.asset(
                    'assets/images/ilustration_girl_with_computer_and_paper.png'),
              ),
              const SizedBox(
                height: (GlobalData.spacing * 7) + 4,
              ),
              const TitleGroup(
                title: 'Permit Recorded',
                subTitle:
                    'You’r permit have been recorded and will be reviewed by the company administration.',
              ),
              const SizedBox(
                height: GlobalData.spacing * 4,
              ),
              MainButton(
                title: 'Done',
                type: 'primary',
                onPressed: (int val) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MainApp();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
