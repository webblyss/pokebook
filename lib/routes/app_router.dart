import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokebook/models/poke_model.dart';
import 'package:pokebook/screens/details_screen.dart';
import 'package:pokebook/screens/home.dart';
import 'package:pokebook/screens/landing_screen.dart';
part 'app_router.gr.dart';            


@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter{
 @override      
 List<AutoRoute> get routes => [      
  AutoRoute(page: HomeRoute.page,path: '/home',initial: true),
  AutoRoute(page: DetailsRoute.page, path: '/detail'),
  AutoRoute(page: LandingRoute.page,path: '/landing')     
  ]; 
}



