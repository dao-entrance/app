import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:themed/themed.dart';
import 'package:window_manager/window_manager.dart';

import 'router.dart';
import 'store/im.dart';
import 'store/db.dart';
import 'utils/screen.dart';
import 'utils/screen/size_extension.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 数据库初始化
  await initDB();

  // 初始化桌面窗口
  if (isPc()) {
    initScreen(1200);
    // 等待桌面初始化
    await windowManager.ensureInitialized();
    WindowOptions windowOptions = const WindowOptions(
      size: Size(1050, 650),
      minimumSize: Size(800, 550),
      center: true,
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      if (Platform.isMacOS || Platform.isWindows) {
        await windowManager.setHasShadow(true);
      }
      windowManager.setTitleBarStyle(TitleBarStyle.hidden, windowButtonVisibility: true);
      if (Platform.isLinux) {
        await windowManager.setAsFrameless();
      }
      await windowManager.show();
      await windowManager.focus();
    });
  } else {
    initScreen(1200);
  }

  // 构建IM全局对象
  IMProvider im = IMProvider();

  runApp(App(im: im));
}

class App extends StatelessWidget {
  final IMProvider im;
  App({Key? key, required this.im}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<IMProvider>(create: (_) => im),
      ],
      child: Themed(
        child: MaterialApp.router(
          title: '我门',
          debugShowCheckedModeBanner: false,
          routeInformationProvider: _router.routeInformationProvider,
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
          builder: ((context, child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(textScaleFactor: 1),
              child: child!,
            );
          }),
        ),
      ),
    );
  }

  final GoRouter _router = GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: routers(),
  );
}
