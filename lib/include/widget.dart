import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:swakulasali_matrimony/pages/homepage.dart';
import 'package:swakulasali_matrimony/pages/settingspage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  SettingsPageClickedEvent,
  //AboutPageClickedEvent,
}

abstract class NavigationStates{}


class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);

  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async*{
    switch (event){
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.SettingsPageClickedEvent:
        yield SettingsPage();
        break;
    // case NavigationEvents.AboutPageClickedEvent:
    // yield AboutPage();
    //break;
    }
  }


}


