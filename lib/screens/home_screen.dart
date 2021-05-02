import 'package:bottomnavbar/cubit/cubit.dart';
import 'package:bottomnavbar/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('BottomNavigationBar Example'),
            ),
            body: cubit.pages[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (int index) {
                cubit.changeCurrentIndex(index);
              },
              currentIndex: cubit.currentIndex,
              backgroundColor: Colors.blue,
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.blue,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.book), label: 'PageOne'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.image), label: 'PageTwo'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'PageThree'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.first_page), label: 'PageFour'),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
