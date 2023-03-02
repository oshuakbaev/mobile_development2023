import 'package:applfive/third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Second());
class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);
  @override
  _Second createState() => _Second();
}

class _Second extends State{
  var _currentStep=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Цветник",
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Второй экран',
          ),
          actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Third()),
                    );
                  },
                  child: const Text('К третьему экрану'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Back'),
                ),
              ],
            ),

          body: Stepper(
              type: StepperType.vertical,
              currentStep: _currentStep,
              onStepContinue: _currentStep<2
                ? () => setState(() => _currentStep+=1):null,
              onStepCancel: _currentStep>0
                ? () => setState(() => _currentStep-=1):null,
              steps: [
                Step(title: Text("Level 1"),isActive:true, content: Text("Погнали, еху!!")),
                Step(title: Text("Level 2"),isActive:true, content: Text("Погнали, еху!!")),
                Step(title: Text("Level 3"),isActive:true, content: Text("Красава, прибыли!!"))
              ],

            ),
          ),
      ),
     );
  }
}