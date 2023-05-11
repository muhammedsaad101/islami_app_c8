import 'package:flutter/material.dart';
import 'package:islami_c8_appliaction/home/hadeth_tab/hadeth_tab.dart';
import 'package:islami_c8_appliaction/home/quran_tab/quran_tab.dart';
import 'package:islami_c8_appliaction/home/radio_tab/radio_tab.dart';
import 'package:islami_c8_appliaction/home/tasbeh_tab/tasbeh_tab.dart';
import 'package:islami_c8_appliaction/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
         Scaffold(
           backgroundColor: Colors.transparent,
           appBar: AppBar(
             //backgroundColor: Colors.transparent,
             //elevation: 0,
             title: Text('Islami', style: Theme.of(context).textTheme.headline1,),
             //centerTitle: true,
           ),
           bottomNavigationBar: Theme(
             data: Theme.of(context).copyWith(
               canvasColor: Theme.of(context).primaryColor,
             ),
             child: BottomNavigationBar(
               currentIndex: selectedIndex,
               onTap: (index){
                 selectedIndex = index;
                 setState(() {

                 });
               },

               items: [
                 BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran_ic.png')), label: 'Quran'),
                 BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/hadeth_ic.png')), label: 'Hadeth'),
                 BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha_ic.png')), label: 'Tasbeh'),
                 BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio_ic.png')), label: 'Radio'),
                 BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
               ],
             ),
           ),
           body: tabs[selectedIndex],
         ),
      ],
    );
  }
  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
