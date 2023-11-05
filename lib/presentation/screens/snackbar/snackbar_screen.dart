import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hello World'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) =>  AlertDialog(
        title: const Text('¿Estas seguro?'),
        content: const Text(
            'Pariatur culpa Lorem ullamco veniam aliqua incididunt occaecat laborum. Nostrud eu reprehenderit nostrud dolore laboris cillum ex duis dolor proident laborum. Commodo occaecat id dolore elit aute ut. Nisi in occaecat laboris veniam minim in esse pariatur aliqua aliqua labore magna labore.'),
            actions: [
              TextButton(onPressed: ()=> context.pop(), 
              child: const Text('Cancelar')),

              FilledButton(onPressed: ()=> context.pop(), 
              child: const Text('Aceptar'))
            ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context);
                },
                child: const Text('Licencias Usadas')),
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text('Mostar Dialogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text('SnackBar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
