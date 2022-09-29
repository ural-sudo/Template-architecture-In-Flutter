

import 'package:flutter/material.dart';


class BaseView<T> extends StatefulWidget {
  BaseView({Key? key, required this.viewModal, required this.onInit,  this.onDispose, required this.builder}) : super(key: key);

  final T viewModal;
  final Function(T model) onInit;
  final void Function()? onDispose; 
  final Widget Function(BuildContext context, T value) builder;

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.onInit(widget.viewModal);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.onDispose;
  }


  @override
  Widget build(BuildContext context) {
    return widget.builder(context,widget.viewModal);
  }
}