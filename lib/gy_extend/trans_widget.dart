

import 'package:flutter/cupertino.dart';

enum TransType{
  CENTER,
}

class TransWidget extends StatelessWidget{

  final Widget child;
  final TransType transType;
  double transX = 0;

  TransWidget(this.child,{this.transType = TransType.CENTER});

  void setTransX(double x){
    this.transX = x;
  }

  @override
  Widget build(BuildContext context) {

    return Transform.translate(offset: Offset(transX,0),child: child,);
  }
}