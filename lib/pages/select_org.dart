import 'dart:async';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:provider/provider.dart';

import '../models/account.dart';
import '../objectbox.g.dart';
import '../utils/screen/size_extension.dart';
import '../apis/apis.dart';
import '../components/components.dart';
import '../models/org.dart';
import '../store/im.dart';
import '../store/theme.dart';

class SelectOrgPage extends StatefulWidget {
  const SelectOrgPage({Key? key}) : super(key: key);

  @override
  State<SelectOrgPage> createState() => _SelectOrgPageState();
}

List<Org> orgs = [
  Org(
    "asyoume",
    name: "我门",
    desc: "we3 在线协作，分布式办公软件",
    color: "#000000",
    domain: "xiaobai.asyou.me",
    avater: "https://www.asyou.me/static/temp/images/icon-152x152.png",
    img: "https://www.asyou.me/static/temp/images/banner.jpg",
    homeUrl: "www.asyou.me/",
    chainUrl: "wss://chain.asyou.me/",
  )
];

class _SelectOrgPageState extends State<SelectOrgPage> {
  StreamSubscription<Query<AccountOrg>>? subscription;
  List<String> selected = [];
  List<Account> accounts = [];
  String currentAddress = "";
  IMProvider? im;

  @override
  void initState() {
    accounts = AccountApi.create().getUsers();
    currentAddress = accounts[0].address;
    Future.delayed(Duration.zero).then((value) async {
      im = context.read<IMProvider>();
      var aorgs = AccountOrgApi.create().listAll();

      if(aorgs.isNotEmpty){
        // 登录账户
        im!.login(aorgs[0].account.target!, orgs[0]);
        im!.setCurrent(aorgs[0].account.target!, orgs[0]);
        onImInit();
      }
      im!.addListener(onImInit);
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    beforeLeave();
  }

  Future<void> beforeLeave() async {
    if (subscription != null) {
      await subscription!.cancel();
    }
    if (im != null) {
      im!.removeListener(onImInit);
    }
    return;
  }

  onImInit() {
    if (im!.current == null || im!.currentState == null) {
      if (isPc()) {
        context.go("/pc");
      } else {
        context.go("/mobile");
      }
      return;
    }
    final queryStream = AccountOrgApi.create().storeBox.query(AccountOrg_.withAddr.equals(currentAddress)).watch();
    subscription = queryStream.listen((query) {
      var qmsgs = query.find();
      print(qmsgs);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LocalAppBar(
        title: "请选择组织",
        tools: Row(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  //设置按下时的背景颜色
                  if (states.contains(MaterialState.pressed)) {
                    return ConstTheme.sidebarTextActiveBorder;
                  }
                  //默认不使用背景颜色
                  return ConstTheme.sidebarTextActiveBorder;
                }),
                // backgroundColor: ConstTheme.mentionBg,
              ),
              onPressed: () {
                if (selected.isEmpty) {
                  MotionToast.warning(
                    title: const Text(
                      '提示',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    description: const Text('请选择组织'),
                    animationCurve: Curves.bounceIn,
                    borderRadius: 0,
                    animationDuration: const Duration(milliseconds: 500),
                  ).show(context);
                  return;
                }
                AccountOrgApi.create().accountSyncOrgs(
                  currentAddress,
                  selected,
                  orgs,
                );
                MotionToast.success(
                  title: const Text(
                    '提示',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  description: const Text('组织选中成功'),
                  animationCurve: Curves.bounceIn,
                  borderRadius: 0,
                  animationDuration: const Duration(milliseconds: 500),
                  onClose: () {
                    context.go("/pc");
                  },
                ).show(context);
              },
              child: const Text('确定'),
            ),
            SizedBox(width: 10.w),
          ],
        ),
      ),
      backgroundColor: ConstTheme.centerChannelBg,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Container(
          //   height: double.maxFinite,
          //   width: 260.w,
          //   color: ConstTheme.sidebarBg,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       for (var i = 0; i < accounts.length; i++)
          //         InkWell(
          //           onTap: () {
          //             setState(() {
          //               currentAddress = accounts[i].address;
          //             });
          //           },
          //           child: Container(
          //             padding: EdgeInsets.symmetric(
          //               vertical: 10.w,
          //               horizontal: 15.w,
          //             ),
          //             decoration: BoxDecoration(
          //               border: Border(
          //                 left: BorderSide(
          //                   width: 5.w,
          //                   color: accounts[i].address == currentAddress
          //                       ? ConstTheme.sidebarTextActiveBorder
          //                       : ConstTheme.sidebarBg,
          //                 ),
          //               ),
          //               color: accounts[i].address == currentAddress ? ConstTheme.centerChannelBg : null,
          //             ),
          //             child: Row(
          //               children: [
          //                 UserAvatar(accounts[i].address, true, 50.w),
          //                 SizedBox(width: 10.w),
          //                 Expanded(
          //                   child: accounts[i].name != null && accounts[i].name != ""
          //                       ? Text(
          //                           accounts[i].name!,
          //                           style: TextStyle(
          //                             color: ConstTheme.sidebarHeaderTextColor,
          //                             fontSize: 16.w,
          //                           ),
          //                         )
          //                       : Text(
          //                           accounts[i].address,
          //                           style: TextStyle(
          //                             color: ConstTheme.sidebarHeaderTextColor,
          //                             fontSize: 12.w,
          //                           ),
          //                         ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       InkWell(
          //         onTap: () => context.push("/sr25519key"),
          //         child: Container(
          //           height: 50.w,
          //           decoration: BoxDecoration(
          //             border: Border(
          //               top: BorderSide(
          //                 width: 1.w,
          //                 color: ConstTheme.sidebarText.withOpacity(0.05),
          //               ),
          //             ),
          //           ),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Icon(
          //                 Icons.add,
          //                 color: ConstTheme.sidebarHeaderTextColor,
          //               ),
          //               Text(
          //                 "添加帐号",
          //                 style: TextStyle(
          //                   color: ConstTheme.sidebarHeaderTextColor,
          //                   fontSize: 14.w,
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: ChipsChoice<String>.multiple(
                wrapped: true,
                value: selected,
                onChanged: (val) => setState(() => selected = val),
                choiceItems: C2Choice.listFrom<String, Org>(
                  source: orgs,
                  value: (i, v) => v.hash,
                  label: (i, v) => v.hash,
                ),
                choiceBuilder: (item, i) {
                  return OrgCard(
                    org: orgs[i],
                    selected: item.selected,
                    onSelect: item.select!,
                  );
                },
              ),
              // Wrap(
              //   spacing: 10.w,
              //   runSpacing: 10.w,
              //   runAlignment: WrapAlignment.start,
              //   alignment: WrapAlignment.start,
              //   crossAxisAlignment: WrapCrossAlignment.start,
              //   children: [
              //     for (var i = 0; i < orgs.length; i++)
              //       InkWell(
              //         onTap: () {},
              //         child: Container(
              //           // margin: EdgeInsets.all(10.w),
              //           decoration: BoxDecoration(
              //             color: ConstTheme.sidebarBg.withAlpha(50),
              //           ),
              //           width: 200.w,
              //           // height: 100.w,
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             children: [
              //               Image.network(
              //                 orgs[i].avater ?? "",
              //                 width: double.infinity,
              //                 fit: BoxFit.cover,
              //                 height: 150.w,
              //               ),
              //               Padding(
              //                 padding: EdgeInsets.symmetric(
              //                     vertical: 15.w, horizontal: 10.w),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(
              //
              //                       orgs[i].name ?? "",
              //                       style: TextStyle(
              //                         color: ConstTheme.centerChannelColor,
              //                         fontSize: 16.w,
              //                       ),
              //                     ),
              //                     Text(
              //
              //                       orgs[i].desc ?? "",
              //                       style: TextStyle(
              //                         color: ConstTheme.centerChannelColor,
              //                         fontSize: 12.w,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //       ),
              //   ],
              // ),
            ),
          )
        ],
      ),
    );
  }
}
