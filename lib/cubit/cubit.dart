import 'package:bottomnavbar/cubit/states.dart';
import 'package:bottomnavbar/screens/page_four_screen.dart';
import 'package:bottomnavbar/screens/page_one_screen.dart';
import 'package:bottomnavbar/screens/page_three_screen.dart';
import 'package:bottomnavbar/screens/page_two_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitialState());
  static HomeCubit get(context) => BlocProvider.of(context);
  List<Widget> pages = [PageOne(), PageTwo(), PageThree(), PageFour()];
  int currentIndex = 0;
  void changeCurrentIndex(int index) {
    currentIndex = index;
    emit(ChangeBottomNavBarState());
  }
}
