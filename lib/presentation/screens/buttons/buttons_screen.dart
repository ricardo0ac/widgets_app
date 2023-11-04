import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screens'),
      ),
      body: const _buttonsViews(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _buttonsViews extends StatelessWidget {
  const _buttonsViews();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return  SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(onPressed: null, child: Text('Elevated')),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarms_outlined), 
              label: const Text('Elevated Icon')),

              FilledButton(onPressed: (){}, 
              child: const Text('Filled'),
              ),

              FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.accessible), label: const Text('Filled Icon')),

              OutlinedButton(onPressed: (){}, child: const Text('Outline')),
              OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.schedule), label: const Text('Outlined Icon')),
              TextButton(onPressed: (){}, child: const Text('Text')),

              TextButton.icon(onPressed: (){}, icon: const Icon(Icons.screen_share_rounded), label: const Text('Text Icon')),

              IconButton(onPressed: (){}, icon: const Icon(Icons.ac_unit_sharp)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.ac_unit),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(colors.primary)
                          ),
              ),
               const customButtons()
            

            
            ],
        ),
      ),
    );
  }
}

class customButtons extends StatelessWidget {
  
  const customButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return  ClipRRect(
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text('Hola', style: TextStyle(color: Colors.white),), 
          ),
        ),

      ),
    );
  }
}
