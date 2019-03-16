import 'package:flutter/material.dart';

import '../../components/Content.dart';

class H_Stepper extends StatefulWidget {
  H_Stepper({Key key}) : super(key: key);

  H_StepperState createState() => H_StepperState();
}

class H_StepperState extends State<H_Stepper> {
  int currentStep = 0;
  final steps = [0, 1, 2, 3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'Stepper',
      body: Stepper(
        type: StepperType.vertical,
        currentStep: currentStep,
        onStepTapped: (int step) {
          print(step.toString());
        },
        onStepContinue: () {
          if (currentStep != steps.length - 1) {
            setState(() {
              currentStep++;
            });
          }
        },
        onStepCancel: () {
          if (currentStep > 0) {
            setState(() {
              currentStep--;
            });
          }
        },
        steps: steps
            .map((int item) => Step(
                  title: Text('title: ' + item.toString()),
                  subtitle: Text('subtitle: ' + item.toString()),
                  content: Text('content: ' + item.toString()),
                  state: currentStep > item
                      ? StepState.complete
                      : currentStep == item
                          ? StepState.editing
                          : StepState.disabled,
                  isActive: true,
                ))
            .toList(),
      ),
    );
  }
}
