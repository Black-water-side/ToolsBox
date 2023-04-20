import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/details_page.dart';


Handler detailsHandler = Handler(
    handlerFunc: (BuildContext? context,Map<String, dynamic> params){
      String goodsId = params['id'].first;
      if (kDebugMode) {
        print('index>details goodsID is ${goodsId}');
      }
      return DetailsPage(goodsId);
    }
);