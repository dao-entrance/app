import 'package:flutter/foundation.dart';

import 'package:matrix/matrix.dart' as link;
import 'package:path_provider/path_provider.dart';

import '../models/models.dart';
import '../utils/screen/size_extension.dart';
import './im_state.dart';

class IMProvider with ChangeNotifier {
  // 当前账户
  String _currentId = "";

  // 当前账户
  Account? me;

  // 多连接
  Map<String, link.Client> connections = {};

  // 连接状态
  Map<String, ImState> connectionStates = {};

  // 登陆账户
  Future<bool> login(Account user, Org org) async {
    // 构建账户密码
    var userName = '${user.address}@${org.domain}/${platformGet()}';
    var password = '12345678';

    final client = link.Client(
      userName,
      databaseBuilder: (_) async {
        final dir = await getApplicationSupportDirectory();
        if (kDebugMode) {
          print("hlive ===> ${dir.path}");
        }
        final db = link.HiveCollectionsDatabase(
          org.domain!.replaceAll(".", "_"),
          dir.path,
        );
        await db.open();
        return db;
      },
    );

    // 链接节点
    await client.init();
    await client.checkHomeserver(Uri.http("127.0.0.1:8008", ''));

    if (!client.isLogged()) {
      await client.uiaRequestBackground((auth) {
        return client.register(
          username: user.address,
          password: password,
          initialDeviceDisplayName: platformGet(),
          auth: auth,
        );
      });

      // 登陆节点
      await client.login(
        link.LoginType.mLoginPassword,
        password: password,
        identifier: link.AuthenticationUserIdentifier(user: user.address),
      );
      await client.setDisplayName(client.userID!, user.name);
    }

    connections[userName] = client;
    connectionStates[userName] = ImState(client, org, user, stateChange);

    notifyListeners();
    return true;
  }

  // 设置当前账户
  setCurrent(Account user, Org org) {
    _currentId = '${user.address}@${org.domain}/${platformGet()}';
    me = user;
    notifyListeners();
  }

  // 获取当前连接
  link.Client? get current {
    return connections[_currentId];
  }

  // 获取当前连接
  ImState? get currentState {
    return connectionStates[_currentId];
  }

  // 发送消息
  sendMsg(User receiver, String msg) {
    if (connections[_currentId] == null) {
      throw Exception('连接错误');
    }
  }

  stateChange() {
    notifyListeners();
  }

  // // 通讯录
  // List<xmpp.Buddy> getAddresslist() {
  //   if (connections[_currentId] == null) {
  //     throw Exception('连接错误');
  //   }
  //   var rosterHandler = xmpp.RosterManager.getInstance(connections[_currentId]!);
  //   return rosterHandler.getRoster();
  // }
}
