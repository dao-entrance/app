import 'package:asyou_app/components/move_window.dart';
import 'package:asyou_app/utils/screen/size_extension.dart';
import 'package:flutter/material.dart';

import '../store/theme.dart';

// ignore: non_constant_identifier_names
JumpTo(
  bool autofocus,
  double widthInput,
  Function? Function() toFunc,
) {
  return moveWindow(Container(
    height: 40.w,
    width: widthInput,
    margin: EdgeInsets.only(left: 0.w, right: 15.w, top: 15.w, bottom: 15.w),
    padding: EdgeInsets.only(left: 10.w),
    decoration: BoxDecoration(
      color: ConstTheme.sidebarText.withOpacity(0.1),
      borderRadius: BorderRadius.only(topRight: Radius.circular(3.w), bottomRight: Radius.circular(3.w)),
    ),
    alignment: Alignment.center,
    child: TextField(
      onTap: toFunc,
      style: TextStyle(color: ConstTheme.sidebarText.withAlpha(155), fontSize: 13.w),
      autofocus: autofocus,
      keyboardType: autofocus ? TextInputType.text : TextInputType.none,
      decoration: InputDecoration(
        hintText: '查找频道',
        hintStyle: TextStyle(
          height: 1.5,
          color: ConstTheme.sidebarText.withAlpha(155),
        ),
        suffixIcon: Icon(Icons.search, size: 20.w, color: ConstTheme.sidebarText.withAlpha(155)),
        contentPadding: const EdgeInsets.all(0),
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        label: null,
      ),
    ),
  ));
}
