import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'components/window/virtual_window_frame.dart';
import 'pages/channel/create.dart';
import 'pages/channel/members.dart';
import 'pages/channel/rename.dart';
import 'pages/main_mobile.dart';
import 'pages/main_pc.dart';
import 'pages/chain/sr25519_key.dart';
import 'pages/search.dart';
import 'pages/select_org.dart';
import 'preloader.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

routers() {
  return <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const VirtualWindowFrame(child: PreloaderPage());
      },
    ),
    GoRoute(
      path: '/mobile',
      builder: (BuildContext context, GoRouterState state) {
        return const VirtualWindowFrame(child: MobilePage());
      },
    ),
    GoRoute(
      path: '/pc',
      builder: (BuildContext context, GoRouterState state) {
        return const VirtualWindowFrame(child: PCPage());
      },
    ),
    GoRoute(
      path: '/sr25519key',
      builder: (BuildContext context, GoRouterState state) {
        return const VirtualWindowFrame(child: Sr25519KeyPage());
      },
    ),
    GoRoute(
      path: '/select_org',
      builder: (BuildContext context, GoRouterState state) {
        return const VirtualWindowFrame(child: SelectOrgPage());
      },
    ),
    GoRoute(
      path: '/search',
      builder: (BuildContext context, GoRouterState state) {
        return const VirtualWindowFrame(child: SearchPage());
      },
    ),
    GoRoute(
      path: '/create_channel',
      builder: (BuildContext context, GoRouterState state) {
        return const VirtualWindowFrame(child: CreateChannelPage());
      },
    ),
    GoRoute(
      path: '/rename_channel/:id',
      builder: (BuildContext context, GoRouterState state) {
        return VirtualWindowFrame(child: RenameChannelPage(id: state.params['id'] ?? ""));
      },
    ),
    GoRoute(
      path: '/channel_members/:id',
      builder: (BuildContext context, GoRouterState state) {
        return VirtualWindowFrame(child: ChannelMemberPage(id: state.params['id'] ?? ""));
      },
    ),
  ];
}
