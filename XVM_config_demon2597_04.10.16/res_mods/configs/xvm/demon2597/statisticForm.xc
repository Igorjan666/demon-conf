/**
 * Parameters of the Battle Statistics form.
 * Параметры окна статистики по клавише Tab.
 */
{
  // Definitions
  // Шаблоны
  "def": {
    // Топ клан.
    "topClan": { "x": "{{r_size=2?-170|-182}}", "y": -1, "bindToIcon": true,
      "format": "<font face='XVMSymbol' size='24' color='#FFCC66' alpha='{{alive?#FF|#80}}'>{{topclan}}</font>"
    },
    // Языковые флаги.
    "languageFlag": { "enabled": "{{.battle.showLanguageFlags}}", "x": -25, "y": 5,
      "format": "<img src='xvm://res/icons/flags/{{flag|default}}.png' width='16' height='13'>"
    }
  },
  "statisticForm": {
    // true - Enable display of battle tier.
    // true - включить отображение уровня боя.
    "showBattleTier": true,
    // true - Disable Platoon icons.
    // true - убрать отображение иконки взвода.
    "removeSquadIcon": false,
    // Opacity percentage of vehicle icon. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконки танка. 0 - прозрачные, 100 - не прозрачные.
    "vehicleIconAlpha": 100,
    // true - disable vehicle level indicator.
    // true - убрать отображение уровня танка.
    "removeVehicleLevel": true,
    // true - disable vehicle type icon.
    // true - убрать отображение типа танка.
    "removeVehicleTypeIcon": true,
    // true - disable player status icon.
    // true - убрать отображение иконки статуса игрока.
    "removePlayerStatusIcon": false,
    // Show border for name field (useful for config tuning)
    // Показывать рамку для поля имени игрока (полезно для настройки конфига)
    "nameFieldShowBorder": false,
    // Show border for vehicle field (useful for config tuning)
    // Показывать рамку для поля имени танка (полезно для настройки конфига)
    "vehicleFieldShowBorder": false,
    // Show border for frags field (useful for config tuning)
    // Показывать рамку для поля фрагов (полезно для настройки конфига)
    "fragsFieldShowBorder": false,
    // X offset for allies squad icons
    // Смещение по оси X значка взвода союзников
    "squadIconOffsetXLeft": 0,
    // X offset for enemies squad icons field
    // Смещение по оси X значка взвода противников
    "squadIconOffsetXRight": 0,
    // X offset for allies player names field
    // Смещение по оси X поля ника союзников
    "nameFieldOffsetXLeft": 0,
    // X offset for enemies player names field
    // Смещение по оси X поля ника противников
    "nameFieldOffsetXRight": -10,
    // Width of allies player names field
    // Ширина поля ника союзников
    "nameFieldWidthLeft": 200,
    // Width of enemies names field
    // Ширина поля ника противников
    "nameFieldWidthRight": 200,
    // X offset for "formatLeftVehicle" field
    // Смещение по оси X поля названия танка союзников
    "vehicleFieldOffsetXLeft": 34,
    // X offset for "formatRightVehicle" field
    // Смещение по оси X поля названия танка противников
    "vehicleFieldOffsetXRight": 31,
    // Width of "formatLeftVehicle" field
    // Ширина поля названия танка союзников
    "vehicleFieldWidthLeft": 225,
    // Width of "formatRightVehicle" field
    // Ширина поля названия танка противников
    "vehicleFieldWidthRight": 225,
    // X offset for allies vehicle icons
    // Смещение по оси X иконки танка союзников
    "vehicleIconOffsetXLeft": 4,
    // X offset for enemies vehicle icons
    // Смещение по оси X иконки танка противников
    "vehicleIconOffsetXRight": 0,
    // X offset for allies frags
    // Смещение по оси X фрагов союзников
    "fragsFieldOffsetXLeft": 7,
    // X offset for enemies frags
    // Смещение по оси X фрагов противников
    "fragsFieldOffsetXRight": 2,
    // Width of frags field for allies
    // Ширина поля фрагов союзников
    "fragsFieldWidthLeft": 43,
    // Width of frags field for enemies
    // Ширина поля фрагов противников
    "fragsFieldWidthRight": 43,
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftNick": "<font face='XVMSymbol' size='{{xvm-stat?12|0}}' color='{{xvm-user}}'>{{xvm-user?&#x71;|   }}</font> <font face='$FieldFont' color='#E5E5E5' alpha='{{alive?{{ready?#FF|#80}}|#80}}'><font size='13' color='{{player?#FFCC66|{{squad?#FF914C|{{tk?#00EAFF}}}}}}'>{{.texts.nicknames.{{name}}|{{name%.12s~..}}}} </font><font size='12' color='{{topclan?#FFCC66|#E5D39A}}'>{{clannb}}</font></font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightNick": "<font face='$FieldFont' color='#E5E5E5' alpha='{{alive?{{ready?#FF|#80}}|#80}}'><font size='12' color='{{topclan?#FFCC66|#E5D39A}}'>{{clannb}}</font><font size='13'> {{.texts.nicknames.{{name}}|{{name%.12s~..}}}}</font></font> <font face='XVMSymbol' size='{{xvm-stat?12|0}}' color='{{xvm-user}}'>{{xvm-user?&#x71;|   <font size='0'>.</font>}}</font>",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftVehicle": "<font size='{{xvm-stat?13|0}}' color='#C8C8B5' alpha='{{alive?#FF|#80}}'><font face='ZurichCondMono' color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font>&nbsp;&nbsp;&nbsp;<font face='ZurichCondMono' color='{{c:kb}}'>{{kb>=99.5?XXk|{{kb%2d~k|--k}}}}</font>&nbsp;&nbsp;&nbsp;<font face='ZurichCondMono' color='{{c:t-battles}}'>{{t-hb>=99.5?XXh|{{t-hb%2d~h|--h}}}}</font>&nbsp;&nbsp;&nbsp;<font face='ZurichCondMono' color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font>&nbsp;&nbsp;&nbsp;<font face='ZurichCondMono' color='{{c:xte}}'>{{xte%s|--}}</font>&nbsp;&nbsp;&nbsp;<font face='XVMSymbol' size='20' color='{{player?#FFCC66|{{squad?#FF914C|{{tk?#00EAFF}}}}}}' alpha='{{alive?#E0|#70}}'>{{vtype}}</font></font>&nbsp;",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightVehicle": "&nbsp;<font size='{{xvm-stat?13|0}}' color='#C8C8B5' alpha='{{alive?#FF|#80}}'><font face='XVMSymbol' size='20' alpha='{{alive?#E0|#70}}'>{{vtype}}</font>&nbsp;&nbsp;&nbsp;<font face='ZurichCondMono' color='{{c:xte}}'>{{xte%s|--}}</font>&nbsp;&nbsp;&nbsp;<font face='ZurichCondMono' color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font>&nbsp;&nbsp;&nbsp;<font face='ZurichCondMono' color='{{c:t-battles}}'>{{t-hb>=99.5?XXh|{{t-hb%2d~h|--h}}}}</font>&nbsp;&nbsp;&nbsp;<font face='ZurichCondMono' color='{{c:kb}}'>{{kb>=99.5?XXk|{{kb%2d~k|--k}}}}</font>&nbsp;&nbsp;&nbsp;<font face='ZurichCondMono' color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font></font>",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftFrags": "<font color='#E5E5E5'>{{frags}}</font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightFrags": "<font color='#E5E5E5'>{{frags}}</font>",
    // Extra fields. Fields are placed one above the other.
    // Дополнительные поля. Поля располагаются друг над другом.
    // Set of formats for left panel (extended format supported, see playersPanel.xc)
    // Набор форматов для левой панели (поддерживается расширенный формат, см. playersPanel.xc)
    "extraFieldsLeft": [
      ${ "def.topClan" },
      ${ "def.languageFlag" }
    ],
    // Set of formats for right panel (extended format supported, see playersPanel.xc)
    // Набор форматов для правой панели (поддерживается расширенный формат, см. playersPanel.xc)
    "extraFieldsRight": [
      ${ "def.topClan" },
      ${ "def.languageFlag" }
    ]
  }
}