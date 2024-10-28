import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/model/authentication_model/signin_model.dart';
import '../data/repository/api_repo.dart';
import '../helper/connection_checker.dart';
import '../helper/router_navigator.dart';
import '../main.dart';
import '../utils/api_url.dart';
import '../view/widgets/loading_dialog.dart';
import '../view/widgets/show_message_dialog.dart';
import 'bottom_navigation_provider.dart';

class ObiturayProvider extends ChangeNotifier {}
