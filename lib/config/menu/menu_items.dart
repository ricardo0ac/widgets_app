import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'button', 
    subTitle: 'Varios botones en flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined),


    MenuItem(
      title: 'Tarjetas', 
      subTitle: 'Contenedor estilizado', 
      link: '/cards', 
      icon: Icons.credit_card),

      MenuItem(
      title: 'Animated', 
      subTitle: '', 
      link: '/animated', 
      icon: Icons.animation),

      MenuItem(
      title: 'App Tutorial', 
      subTitle: '', 
      link: '/AppTutorial', 
      icon: Icons.boy),

      MenuItem(
      title: 'Infinite Scroll', 
      subTitle: '', 
      link: '/InfiniteScroll', 
      icon: Icons.info),

      MenuItem(
      title: 'Progress', 
      subTitle: 'Generales y Controlados', 
      link: '/Progress', 
      icon: Icons.refresh_rounded),

      MenuItem(
      title: 'Snack Bar', 
      subTitle: 'Indicadores de pantalla', 
      link: '/SnackBar', 
      icon: Icons.bar_chart),

      MenuItem(
      title: 'Ui Control', 
      subTitle: '', 
      link: '/UiControl', 
      icon: Icons.control_point),

];
