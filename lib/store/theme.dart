import 'package:flutter/material.dart';
import 'package:themed/themed.dart';

const themes = [
  {
    //0
    "type": 'Afterglow',
    "sidebarBg": "#2f2c2f",
    "sidebarText": "#dedede",
    "sidebarUnreadText": "#dedede",
    "sidebarTextHoverBg": "#5c6380",
    "sidebarTextActiveBorder": "#a36b31",
    "sidebarTextActiveColor": "#d2d6d6",
    "sidebarHeaderBg": "#252525",
    "sidebarHeaderTextColor": "#dedede",
    "onlineIndicator": "#adba4e",
    "mentionBg": "#db6668",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#1d1d1d"
  },
  {
    // 1
    "type": 'Bourbon',
    "sidebarBg": "#cf7c44",
    "sidebarText": "#fffafc",
    "sidebarUnreadText": "#fffafc",
    "sidebarTextHoverBg": "#fbedd4",
    "sidebarTextActiveBorder": "#e89a6b",
    "sidebarTextActiveColor": "#f7db72",
    "sidebarHeaderBg": "#c46524",
    "sidebarHeaderTextColor": "#fffafc",
    "onlineIndicator": "#92406a",
    "mentionBg": "#92406a",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#a56336"
  },
  {
    // 2
    "type": 'Brinjal',
    "sidebarBg": "#4f2f4c",
    "sidebarText": "#ffffff",
    "sidebarUnreadText": "#ffffff",
    "sidebarTextHoverBg": "#3e313c",
    "sidebarTextActiveBorder": "#8c5888",
    "sidebarTextActiveColor": "#ffffff",
    "sidebarHeaderBg": "#452842",
    "sidebarHeaderTextColor": "#ffffff",
    "onlineIndicator": "#00ffb7",
    "mentionBg": "#de4c0d",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#372034"
  },
  {
    // 3
    "type": 'Blue',
    "sidebarBg": "#014a83",
    "sidebarText": "#ffffff",
    "sidebarUnreadText": "#ffffff",
    "sidebarTextHoverBg": "#053354",
    "sidebarTextActiveBorder": "#dd661e",
    "sidebarTextActiveColor": "#ffffff",
    "sidebarHeaderBg": "#053354",
    "sidebarHeaderTextColor": "#ffffff",
    "onlineIndicator": "#dd661e",
    "mentionBg": "#dd661e",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#042843"
  },
  {
    // 4
    "type": 'Red',
    "sidebarBg": "#751c01",
    "sidebarText": "#ffffff",
    "sidebarUnreadText": "#ffffff",
    "sidebarTextHoverBg": "#ad2a02",
    "sidebarTextActiveBorder": "#ffffff",
    "sidebarTextActiveColor": "#751c01",
    "sidebarHeaderBg": "#5c1500",
    "sidebarHeaderTextColor": "#ffffff",
    "onlineIndicator": "#ffffff",
    "mentionBg": "#ad2a02",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#491000"
  },
  {
    //5
    "type": "Thoroughcare",
    "sidebarBg": "#245b61",
    "sidebarText": "#ffffff",
    "sidebarUnreadText": "#ffffff",
    "sidebarTextHoverBg": "#b0c1c4",
    "sidebarTextActiveBorder": "#72d4c0",
    "sidebarTextActiveColor": "#ffffff",
    "sidebarHeaderBg": "#245b61",
    "sidebarHeaderTextColor": "#ffffff",
    "onlineIndicator": "#bef200",
    "mentionBg": "#f15340",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#1c484d"
  },
  {
    //6
    "type": "Solarized",
    "sidebarBg": "#fdf6e3",
    "sidebarText": "#837e65",
    "sidebarUnreadText": "#657b83",
    "sidebarTextHoverBg": "#eee8d5",
    "sidebarTextActiveBorder": "#d3cdb9",
    "sidebarTextActiveColor": "#fdf6e3",
    "sidebarHeaderBg": "#eee8d5",
    "sidebarHeaderTextColor": "#838165",
    "onlineIndicator": "#2aa198",
    "mentionBg": "#dc322f",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#fffff9",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#eee8d5"
  },
  {
    //7
    "type": "JuiceBar",
    "sidebarBg": "#86a34e",
    "sidebarText": "#ffffff",
    "sidebarUnreadText": "#ffffff",
    "sidebarTextHoverBg": "#94af63",
    "sidebarTextActiveBorder": "#ffffff",
    "sidebarTextActiveColor": "#6d8b42",
    "sidebarHeaderBg": "#94af63",
    "sidebarHeaderTextColor": "#ffffff",
    "onlineIndicator": "#ffb10a",
    "mentionBg": "#dfa044",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#768c4f"
  },
  {
    //8
    "type": "SQOOL",
    "sidebarBg": "#003554",
    "sidebarText": "#ffffff",
    "sidebarUnreadText": "#ffffff",
    "sidebarTextHoverBg": "#006494",
    "sidebarTextActiveBorder": "#006494",
    "sidebarTextActiveColor": "#ffffff",
    "sidebarHeaderBg": "#073c57",
    "sidebarHeaderTextColor": "#ffffff",
    "onlineIndicator": "#00a6fb",
    "mentionBg": "#eb4d5c",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#053045"
  },
  {
    //9
    "type": 'Choco Mint',
    "sidebarBg": "#544538",
    "sidebarText": "#ffffff",
    "sidebarUnreadText": "#ffffff",
    "sidebarTextHoverBg": "#4a3c30",
    "sidebarTextActiveBorder": "#5db09d",
    "sidebarTextActiveColor": "#ffffff",
    "sidebarHeaderBg": "#42362b",
    "sidebarHeaderTextColor": "#ffffff",
    "onlineIndicator": "#ffffff",
    "mentionBg": "#5db09d",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#342b22"
  },
  {
    //10
    "type": 'quartz',
    "sidebarBg": "#373d48",
    "sidebarText": "#ffffff",
    "sidebarUnreadText": "#ffffff",
    "sidebarTextHoverBg": "#4a5664",
    "sidebarTextActiveBorder": "#5294e2",
    "sidebarTextActiveColor": "#ffffff",
    "sidebarHeaderBg": "#303641",
    "sidebarHeaderTextColor": "#ffffff",
    "onlineIndicator": "#5294e2",
    "mentionBg": "#5294e2",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#262b34",
  },
  {
    //11
    "type": 'Dolly Light',
    "sidebarBg": "#fafafa",
    "sidebarText": "#564f4d",
    "sidebarUnreadText": "#564f4d",
    "sidebarTextHoverBg": "#ededed",
    "sidebarTextActiveBorder": "#e7412a",
    "sidebarTextActiveColor": "#ffffff",
    "sidebarHeaderBg": "#f3f3f3",
    "sidebarHeaderTextColor": "#564f4d",
    "onlineIndicator": "#8da600",
    "mentionBg": "#0ea7b5",
    "awayIndicator": "#ffbc1f",
    "dndIndicator": "#d24b4e",
    "mentionBj": "#ffffff",
    "mentionColor": "#1e325c",
    "centerChannelBg": "#ffffff",
    "centerChannelColor": "#3f4350",
    "newMessageSeparator": "#cc8f00",
    "linkColor": "#386fe5",
    "buttonBg": "#1c58d9",
    "buttonColor": "#ffffff",
    "errorTextColor": "#d24b4e",
    "mentionHighlightBg": "#ffd470",
    "mentionHighlightLink": "#1b1d22",
    "codeTheme": "github",
    "sidebarOrgBarBg": "#c2c2c2"
  },
  {
    //12
    "type": 'Solarized Dark Theme',
    "awayIndicator": "#E0B333",
    "buttonBg": "#859900",
    "buttonColor": "#fdf6e3",
    "centerChannelBg": "#073642",
    "centerChannelColor": "#93a1a1",
    "codeTheme": "solarized-dark",
    "linkColor": "#268bd2",
    "mentionBg": "#dc322f",
    "mentionColor": "#ffffff",
    "mentionHighlightBg": "#d33682",
    "mentionHighlightLink": "#268bd2",
    "newMessageSeparator": "#cb4b16",
    "onlineIndicator": "#2AA198",
    "sidebarBg": "#073642",
    "sidebarHeaderBg": "#002B36",
    "sidebarHeaderTextColor": "#FDF6E3",
    "sidebarText": "#FDF6E3",
    "sidebarTextActiveBorder": "#d33682",
    "sidebarTextActiveColor": "#FDF6E3",
    "sidebarTextHoverBg": "#CB4B16",
    "sidebarUnreadText": "#FDF6E3",
    "errorTextColor": "#dc322f"
  },
  {
    //13
    "type": "Gruvbox Dark Theme",
    "awayIndicator": "#fabd2f",
    "buttonBg": "#689d6a",
    "buttonColor": "#ebdbb2",
    "centerChannelBg": "#3c3836",
    "centerChannelColor": "#ebdbb2",
    "codeTheme": "monokai",
    "errorTextColor": "#fb4934",
    "linkColor": "#83a598",
    "mentionBg": "#b16286",
    "mentionColor": "#fbf1c7",
    "mentionHighlightBg": "#d65d0e",
    "mentionHighlightLink": "#fbf1c7",
    "newMessageSeparator": "#d65d0e",
    "onlineIndicator": "#b8bb26",
    "sidebarBg": "#282828",
    "sidebarHeaderBg": "#1d2021",
    "sidebarHeaderTextColor": "#ebdbb2",
    "sidebarText": "#ebdbb2",
    "sidebarTextActiveBorder": "#d65d0e",
    "sidebarTextActiveColor": "#fbf1c7",
    "sidebarTextHoverBg": "#d65d0e",
    "sidebarUnreadText": "#fe8019"
  },
  {
    //14
    "type": "One Dark Theme",
    "sidebarBg": "#21252b",
    "sidebarText": "#abb2bf",
    "sidebarUnreadText": "#abb2bf",
    "sidebarTextHoverBg": "#3a3f4b",
    "sidebarTextActiveBorder": "#4d78cc",
    "sidebarTextActiveColor": "#d7dae0",
    "sidebarHeaderBg": "#282c34",
    "sidebarHeaderTextColor": "#abb2bf",
    "onlineIndicator": "#98c379",
    "awayIndicator": "#d19a66",
    "dndIndicator": "#be5046",
    "mentionBg": "#98c379",
    "mentionColor": "#ffffff",
    "centerChannelBg": "#282c34",
    "centerChannelColor": "#abb2bf",
    "newMessageSeparator": "#c67add",
    "linkColor": "#61afef",
    "buttonBg": "#4d78cc",
    "buttonColor": "#ffffff",
    "errorTextColor": "#f44747",
    "mentionHighlightBg": "#525a69",
    "mentionHighlightLink": "#61afef",
    "codeTheme": "monokai"
  },
  {
    //15
    "type": "Discord Dark Theme",
    "sidebarBg": "#2f3136",
    "sidebarText": "#ffffff",
    "sidebarUnreadText": "#ffffff",
    "sidebarTextHoverBg": "#33363c",
    "sidebarTextActiveBorder": "#66cfa0",
    "sidebarTextActiveColor": "#ffffff",
    "sidebarHeaderBg": "#27292c",
    "sidebarHeaderTextColor": "#ffffff",
    "onlineIndicator": "#43b581",
    "awayIndicator": "#faa61a",
    "dndIndicator": "#f04747",
    "mentionBg": "#6e84d2",
    "mentionColor": "#ffffff",
    "centerChannelBg": "#36393f",
    "centerChannelColor": "#dddddd",
    "newMessageSeparator": "#6e84d2",
    "linkColor": "#2095e8",
    "buttonBg": "#43b581",
    "buttonColor": "#ffffff",
    "errorTextColor": "#ff6461",
    "mentionHighlightBg": "#3d414f",
    "mentionHighlightLink": "#6e84d2",
    "codeTheme": "monokai"
  },
  {
    //16
    "type": "Night Owl Dark Theme",
    "sidebarBg": "#011627",
    "sidebarText": "#d6deeb",
    "sidebarUnreadText": "#d6deeb",
    "sidebarTextHoverBg": "#1d3b53",
    "sidebarTextActiveBorder": "#ff2c83",
    "sidebarTextActiveColor": "#82aaff",
    "sidebarHeaderBg": "#1d3b53",
    "sidebarHeaderTextColor": "#d6deeb",
    "onlineIndicator": "#addb67",
    "awayIndicator": "#ffbc42",
    "dndIndicator": "#f74343",
    "mentionBg": "#d6deeb",
    "mentionColor": "#145dbf",
    "centerChannelBg": "#011627",
    "centerChannelColor": "#d6deeb",
    "newMessageSeparator": "#ff8800",
    "linkColor": "#2389d7",
    "buttonBg": "#166de0",
    "buttonColor": "#011627",
    "errorTextColor": "#fd5960",
    "mentionHighlightBg": "#0b2942",
    "mentionHighlightLink": "#82aaff",
    "codeTheme": "solarized-dark"
  },
];

int currentTheme = 13;

class ConstTheme {
  static ColorRef sidebarBg = ColorRef(hexToColor(themes[currentTheme]["sidebarBg"]!));
  static ColorRef sidebarText = ColorRef(hexToColor(themes[currentTheme]["sidebarText"]!));
  static ColorRef sidebarUnreadText = ColorRef(hexToColor(themes[currentTheme]["sidebarUnreadText"]!));
  static ColorRef sidebarTextHoverBg = ColorRef(hexToColor(themes[currentTheme]["sidebarTextHoverBg"]!));
  static ColorRef sidebarTextActiveBorder = ColorRef(hexToColor(themes[currentTheme]["sidebarTextActiveBorder"]!));
  static ColorRef sidebarTextActiveColor = ColorRef(hexToColor(themes[currentTheme]["sidebarTextActiveColor"]!));
  static ColorRef sidebarHeaderBg = ColorRef(hexToColor(themes[currentTheme]["sidebarHeaderBg"]!));
  static ColorRef sidebarHeaderTextColor = ColorRef(hexToColor(themes[currentTheme]["sidebarHeaderTextColor"]!));
  static ColorRef onlineIndicator = ColorRef(hexToColor(themes[currentTheme]["onlineIndicator"]!));
  static ColorRef awayIndicator = ColorRef(hexToColor(themes[currentTheme]["awayIndicator"]!));
  static ColorRef dndIndicator = ColorRef(hexToColor(themes[currentTheme]["dndIndicator"]!));
  static ColorRef mentionBg = ColorRef(hexToColor(themes[currentTheme]["mentionBg"]!));
  static ColorRef mentionColor = ColorRef(hexToColor(themes[currentTheme]["mentionColor"]!));
  static ColorRef centerChannelBg = ColorRef(hexToColor(themes[currentTheme]["centerChannelBg"]!));
  static ColorRef centerChannelColor = ColorRef(hexToColor(themes[currentTheme]["centerChannelColor"]!));
  static ColorRef newMessageSeparator = ColorRef(hexToColor(themes[currentTheme]["newMessageSeparator"]!));
  static ColorRef linkColor = ColorRef(hexToColor(themes[currentTheme]["linkColor"]!));
  static ColorRef buttonBg = ColorRef(hexToColor(themes[currentTheme]["buttonBg"]!));
  static ColorRef buttonColor = ColorRef(hexToColor(themes[currentTheme]["buttonColor"]!));
  static ColorRef errorTextColor = ColorRef(hexToColor(themes[currentTheme]["errorTextColor"]!));
  static ColorRef mentionHighlightBg = ColorRef(hexToColor(themes[currentTheme]["mentionHighlightBg"]!));
  static ColorRef mentionHighlightLink = ColorRef(hexToColor(themes[currentTheme]["mentionHighlightLink"]!));
  static ColorRef codeTheme = ColorRef(hexToColor(themes[currentTheme]["codeTheme"]!));
}

setTheme(int index) {
  Map<ThemeRef, Object> anotherTheme = {
    ConstTheme.sidebarBg: ColorRef(hexToColor(themes[index]["sidebarBg"]!)),
    ConstTheme.sidebarText: ColorRef(hexToColor(themes[index]["sidebarText"]!)),
    ConstTheme.sidebarUnreadText: ColorRef(hexToColor(themes[index]["sidebarUnreadText"]!)),
    ConstTheme.sidebarTextHoverBg: ColorRef(hexToColor(themes[index]["sidebarTextHoverBg"]!)),
    ConstTheme.sidebarTextActiveBorder: ColorRef(hexToColor(themes[index]["sidebarTextActiveBorder"]!)),
    ConstTheme.sidebarTextActiveColor: ColorRef(hexToColor(themes[index]["sidebarTextActiveColor"]!)),
    ConstTheme.sidebarHeaderBg: ColorRef(hexToColor(themes[index]["sidebarHeaderBg"]!)),
    ConstTheme.sidebarHeaderTextColor: ColorRef(hexToColor(themes[index]["sidebarHeaderTextColor"]!)),
    ConstTheme.onlineIndicator: ColorRef(hexToColor(themes[index]["onlineIndicator"]!)),
    ConstTheme.awayIndicator: ColorRef(hexToColor(themes[index]["awayIndicator"]!)),
    ConstTheme.dndIndicator: ColorRef(hexToColor(themes[index]["dndIndicator"]!)),
    ConstTheme.mentionBg: ColorRef(hexToColor(themes[index]["mentionBg"]!)),
    ConstTheme.mentionColor: ColorRef(hexToColor(themes[index]["mentionColor"]!)),
    ConstTheme.centerChannelBg: ColorRef(hexToColor(themes[index]["centerChannelBg"]!)),
    ConstTheme.centerChannelColor: ColorRef(hexToColor(themes[index]["centerChannelColor"]!)),
    ConstTheme.newMessageSeparator: ColorRef(hexToColor(themes[index]["newMessageSeparator"]!)),
    ConstTheme.linkColor: ColorRef(hexToColor(themes[index]["linkColor"]!)),
    ConstTheme.buttonBg: ColorRef(hexToColor(themes[index]["buttonBg"]!)),
    ConstTheme.buttonColor: ColorRef(hexToColor(themes[index]["buttonColor"]!)),
    ConstTheme.errorTextColor: ColorRef(hexToColor(themes[index]["errorTextColor"]!)),
    ConstTheme.mentionHighlightBg: ColorRef(hexToColor(themes[index]["mentionHighlightBg"]!)),
    ConstTheme.mentionHighlightLink: ColorRef(hexToColor(themes[index]["mentionHighlightLink"]!)),
    ConstTheme.codeTheme: ColorRef(hexToColor(themes[index]["codeTheme"]!)),
  };
}

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
