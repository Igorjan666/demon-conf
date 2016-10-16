/**
 * Parameters of the Players Panels ("ears").
 * Параметры панелей игроков ("ушей").
 *
 * Extra field parameters:
 *
 * types of formats available for extended format:
 *   - MovieClip (for loading image)
 *   - TextField (for writing text and creating rectangles)
 * if "src" field is present, MovieClip format will be used
 * if "src" field is absent, TextField format will be used
 *
 * fields available for extended format:
 *   "src" - resource path ("xvm://res/contour/{{vehiclename}}.png")
 *   "format" - text format (macros allowed)
 *
 * fields available for both MovieClip and TextField formats:
 *   "enabled" - enable/disable field creation (global macros allowed)
 *   "x" - x position (macros allowed)
 *   "y" - y position (macros allowed)
 *   "width" - width (macros allowed)
 *   "height" - height (macros allowed)
 *   "bindToIcon" - if enabled, x position is binded to vehicle icon (default false)
 *   "alpha" - transparency in percents (0..100) (macros allowed)
 *   "rotation" - rotation in degrees (0..360) (macros allowed)
 *   "align" - horizontal alignment ("left", "center", "right")
 *      for left panel default value is "left"
 *      for right panel default value is "right"
 *   "valign" - vertical alignment ("none", "top", "center", "bottom")
 *   "scaleX", "scaleY" - scaling (use negative values for mirroring)
 *   "hotKeyCode" - keyboard key code (see list in hotkeys.xc), when pressed - switches text field to show and apply configured html in "format", or hide; when defined, text field will not be shown until key is pressed, to disable define null value or delete parameter
 *   "onHold" - take action by key click (false) or while key is remains pressed (true); (default: false)
 *   "visibleOnHotKey" - field visible on hot key pressed (true) or vice versa (false); (default: true)
 *      Field visibility flag
 *      If don't set "ally", "squadman", "player", "enemy", "teamKiller", they are not used.
 *      If don't set "neverSeen", "lost" and "spotted", it uses all - and "neverSeen", and "lost", and "spotted". Note: "neverSeen" status disabled for the minimap.
 *      If don't set "alive", "dead", it uses both - and "alive", and "dead"
 *      -------------------------------------------------------------------------------------
 *      Флаг видимости поля
 *      Если не указаны "ally", "squadman", "player", "enemy", "teamKiller", то они не используются.
 *      Если не указаны "neverSeen", "lost" и "spotted", то используются все - и "neverSeen", и "lost", и "spotted". Примечание: статус "neverSeen" для миникарты отключен.
 *      Если не указаны "alive", "dead", то используются оба - и "alive", и "dead".
 *
 * fields available for TextField format only:
 *   "borderColor" - if set, draw border with specified color (macros allowed)
 *   "bgColor" - if set, draw background with specified color (macros allowed)
 *   "antiAliasType" - anti aliasing mode ("advanced" or "normal")
 *
 * fields available for MovieClip format only:
 *   "highlight" - highlight icon depending on the player state, default false
 *
 * fields available for players panel, statistic form, battle loading and minimap:
 *   "layer": field z-order
 *     values:
 *     "substrate": put field behind all fields (for the players panel x value depends on the players panel width)
 *     "bottom": put field behind all standard fields but above substrate fields (for the players panel x value does not depend on the players panel width)
 *     "normal": put field above bottom fields (for the players panel etc- above vehicle icon but behind standard text fields) (default)
 *     "top": put field above all fields
 *
 * text format and shadow:
 *   http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/text/TextFormat.html
 *   "textFormat": {
 *     "font"
 *     "size"
 *     "color"
 *     "bold"
 *     "italic"
 *     "underline"
 *     "align"
 *     "valign"
 *     "leftMargin"
 *     "rightMargin"
 *     "indent"
 *     "leading"
 *     "tabStops"
 *   }
 *
 *   http://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/filters/DropShadowFilter.html
 *   "shadow": {
 *     "enabled"
 *     "distance" (in pixels)
 *     "angle"    (0.0 .. 360.0)
 *     "color"    "0xXXXXXX"
 *     "alpha"    (0.0 .. 100.0)
 *     "blur"     (0.0 .. 255.0)
 *     "strength" (0.0 .. 255.0)
 *     "quality"
 *     "inner"
 *     "knockout"
 *     "hideObject"
 *   }
 */
{
  // Definitions
  // Шаблоны
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 75, "blur": 2, "strength": 1, "distance": 0, "angle": 0 },
    // Squad icon.
    // Иконка взвода.
    "squad": { "x": 7, "y": 4, "alpha": "{{alive?100|50}}",
      "src": "cfg://demon2597/img/squads/{{squad-num?{{squad?sq|squad}}{{squad-num}}|none}}.png"
    },
    // Enemy spotted status marker definition.
    // Шаблон маркера статуса засвета противника.
    "enemySpottedMarker": { "x": 79, "y": 2, "width": 5, "height": 22, "bgColor": "{{c:spotted}}", "borderColor": "0x000000", "alpha": "{{a:spotted}}", "bindToIcon": true },
    // XMQP service marker definition.
    // Шаблон маркера сервиса XMQP.
    "xmqpServiceMarker": { "x": 79, "y": 2, "width": 5, "height": 22, "bgColor": "{{alive?{{x-spotted?0xFFBB00|{{x-sense-on?0xBFBFBF|{{x-enabled?0x800600|0x595959}}}}}}|0x595959}}", "borderColor": "0x000000", "alpha": "{{alive?100|50}}", "bindToIcon": true },

    // "short" panels text fields.
    // Текстовые поля "short" ушей.
    "shortSelected": { "width": "{{xvm-stat?{{r_size=2?86|98}}|47}}", "$ref": { "path": "def.largeSelected" } },
    "shortHpMarkLeft": { "x": 28, "y": 1, "width": "{{xvm-stat?47|18}}", "alpha": "{{alive?40|0}}",
      "src": "cfg://demon2597/img/{{c:hp-ratio|none}}.png"
    },
    "shortHpMarkRight": { "scaleX": -1, "$ref": { "path": "def.shortHpMarkLeft" } },
    "shortFrags": { "x": 35, "$ref": { "path": "def.largeFrags" } },
    "shortRatingLeft": { "x": 45, "$ref": { "path": "def.largeRatingLeft" } },
    "shortRatingRight": { "x": 45, "$ref": { "path": "def.largeRatingRight" } },

    // "medium" panels text fields.
    // Текстовые поля "medium" ушей.
    "mediumSelected": { "width": "{{xvm-stat?{{r_size=2?213|225}}|173}}", "$ref": { "path": "def.largeSelected" } },
    "mediumHpMarkLeft": { "x": "{{xvm-stat?51|28}}", "$ref": { "path": "def.largeHpMarkLeft" } },
    "mediumHpMarkRight": { "x": "{{xvm-stat?51|28}}", "$ref": { "path": "def.largeHpMarkRight" } },
    "mediumBattles": { "x": 28, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:kb}}'>{{kb>=99.5?XXk|{{kb%2d~k|--k}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "mediumNameLeft": { "x": "{{xvm-stat?51|28}}", "$ref": { "path": "def.largeNameLeft" } },
    "mediumNameRight": { "x": "{{xvm-stat?51|28}}", "$ref": { "path": "def.largeNameRight" } },
    "mediumFrags": { "x": "{{xvm-stat?184|161}}", "$ref": { "path": "def.largeFrags" } },
    "mediumRating": { "x": 194, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "mediumHpBarBgDimmerLeft": { "x": "{{xvm-stat?57|34}}", "$ref": { "path": "def.largeHpBarBgDimmerLeft" } },
    "mediumHpBarBgDimmerRight": { "x": "{{xvm-stat?57|34}}", "$ref": { "path": "def.largeHpBarBgDimmerRight" } },
    "mediumHpBarBg": { "x": "{{xvm-stat?56|33}}", "$ref": { "path": "def.largeHpBarBg" } },
    "mediumHpBar": { "x": "{{xvm-stat?57|34}}", "$ref": { "path": "def.largeHpBar" } },
    "mediumHpKnown": { "x": "{{xvm-stat?107|84}}", "$ref": { "path": "def.largeHpKnown" } },
    "mediumHpUnknown": { "x": "{{xvm-stat?107|84}}", "$ref": { "path": "def.largeHpUnknown" } },
    "mediumHpDead": { "x": "{{xvm-stat?107|84}}", "$ref": { "path": "def.largeHpDead" } },

    // "medium2" panels text fields.
    // Текстовые поля "medium2" ушей.
    "medium2Selected": { "width": "{{xvm-stat?213|173}}", "$ref": { "path": "def.largeSelected" } },
    "medium2Battles": { "x": 28, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:t-battles}}'>{{t-hb>=99.5?XXh|{{t-hb%2d~h|--h}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "medium2Rating": { "x": 194, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:xte}}'>{{xte%s|--}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },

    // "large" and "medium" panels text fields.
    // Текстовые поля "large" и "medium" ушей.
    "largeSelected": { "y": 1, "width": "{{xvm-stat?{{r_size=2?260|272}}|173}}", "alpha": 33,
      "src": "cfg://demon2597/img/{{selected}}{{.playersPanel.colorSelectedByStat=true?{{c:r}}}}.png"
    },
    "largeHpMarkLeft": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false, "x": "{{xvm-stat?76|28}}", "y": 1, "alpha": "{{alive?40|0}}",
      "src": "cfg://demon2597/img/{{c:hp-ratio|none}}.png"
    },
    "largeHpMarkRight": { "scaleX": -1, "$ref": { "path": "def.largeHpMarkLeft" } },
    "largeBattlesLeft": { "x": 28, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:kb}}'>{{kb>=99.5?XXk|{{kb%2d~k|--k}}}}</font> <font color='{{c:t-battles}}'>{{t-hb>=99.5?XXh|{{t-hb%2d~h|--h}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeBattlesRight": { "x": 28, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:t-battles}}'>{{t-hb>=99.5?XXh|{{t-hb%2d~h|--h}}}}</font> <font color='{{c:kb}}'>{{kb>=99.5?XXk|{{kb%2d~k|--k}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeNameLeft": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false, "x": "{{xvm-stat?76|28}}", "y": 2,
      "format": "<font face='$FieldFont' color='#FFFFFF' alpha='{{alive?{{ready?#FF|#80}}|#80}}'><font size='13' color='{{player?#FFCC66|{{squad?#FF914C|{{tk?#00EAFF}}}}}}'>{{.texts.nicknames.{{name}}|{{name%.12s~..}}}} </font><font size='12' color='{{topclan?#FFCC66|#E5D39A}}'>{{clannb}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeNameRight": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false, "x": "{{xvm-stat?76|28}}", "y": 2,
      "format": "<font face='$FieldFont' color='#FFFFFF' alpha='{{alive?{{ready?#FF|#80}}|#80}}'><font size='12' color='{{topclan?#FFCC66|#E5D39A}}'>{{clannb}}</font><font size='13'> {{.texts.nicknames.{{name}}|{{name%.12s~..}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeFrags": { "x": "{{xvm-stat?209|161}}", "align": "center", "y": 2,
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{frags}}</font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeRatingLeft": { "x": 219, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font><font face='$FieldFont'>   </font><font color='{{c:xte}}'>{{xte%s|--}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeRatingRight": { "x": 219, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:xte}}'>{{xte%s|--}}</font><font face='$FieldFont'>   </font><font color='{{c:r}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeHpBarBgDimmerLeft": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?82|34}}", "y": 20, "width": 100, "height": 3, "bgColor": "0x000000", "alpha": "{{alive?{{hp?20|0}}|0}}" },
    "largeHpBarBgDimmerRight": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?82|34}}", "y": 20, "width": 100, "height": 3, "bgColor": "0x000000", "alpha": "{{alive?{{hp?10|0}}|0}}" },
    "largeHpBarBg": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?81|33}}", "y": 19, "width": 102, "height": 5, "bgColor": "{{player?{{alive?#FFCC66|#BF891D}}|{{c:system}}}}", "alpha": "{{alive?{{hp?30|0}}|30}}", "borderColor": "0x000000" },
    "largeHpBar": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?82|34}}", "y": 20, "width": "{{hp-ratio:100}}", "height": 3, "bgColor": "{{player?#FFCC66|{{c:system}}}}", "alpha": "{{hp?70|0}}" },
    "largeHpKnown": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?132|84}}", "y": 2, "align": "center", "alpha": "{{alive?{{hp?100|0}}|0}}",
      "format": "<font face='$FieldFont' size='13' color='{{c:hp-ratio}}' alpha='{{ready?#FF|#80}}'><font face='ZurichCondMono'>{{hp%4d}}</font> <font face='ZurichCondMono'>({{hp-ratio%3d}}</font>% / <font face='ZurichCondMono'>{{hp-max%4d}})</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeHpUnknown": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?132|84}}", "y": -3, "align": "center", "alpha": "{{alive?{{hp?0|100}}|0}}",
      "format": "<font face='XVMSymbol' size='24' color='#9284C3' alpha='{{ready?#FF|#80}}'>{{l10n:No data}}</font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeHpDead": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?132|84}}", "y": -1, "align": "center", "alpha": "{{alive?0|100}}",
      "format": "<font face='XVMSymbol' size='24' color='#FFFFFF' alpha='#80'>&#x2B;</font>",
      "shadow": ${ "def.textFieldShadow" }
    }
  },
  "playersPanel": {
    // false - disable.
    // false - отключить.
    "enabled": true,
    // Opacity percentage of the panels. 0 - transparent, 100 - opaque.
    // Прозрачность в процентах ушей. 0 - прозрачные, 100 - не прозрачные.
    "alpha": 45,
    // Opacity percentage of icons in the panels. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконок в ушах. 0 - прозрачные, 100 - не прозрачные.
    "iconAlpha": 100,
    // true - disable background of the selected player.
    // true - убрать подложку выбранного игрока.
    "removeSelectedBackground": true,
    // true - color custom background of the selected player by statistics.
    // true - окрашивать кастомную подложку выбранного игрока по статистике.
    "colorSelectedByStat": true,
    // true - remove the Players Panel mode switcher (buttons for changing size).
    // true - убрать переключатель режимов ушей мышкой.
    "removePanelsModeSwitcher": false,
    // Start panels mode. Possible values: "none", "short", "medium", "medium2", "large".
    // Начальный режим ушей. Возможные значения: "none", "short", "medium", "medium2", "large".
    "startMode": "large",
    // Alternative panels mode. Possible values: null, "none", "short", "medium", "medium2", "large".
    // Альтернативный режим ушей. Возможные значения: null, "none", "short", "medium", "medium2", "large".
    "altMode": null,
    // Options for the "none" panels - empty panels.
    // Режим ушей "none" - пустые уши.
    "none": {
      // false - disable (отключить)
      "enabled": false,
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 0,
      // Layout ("vertical" or "horizontal")
      // Размещение ("vertical" - вертикально, или "horizontal" - горизонтально)
      "layout": "vertical",
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Opacity of dynamic squad invite indicator
      // Прозрачность индикатора приглашения в динамический взвод
      "inviteIndicatorAlpha": 100,
      // X position offset of dynamic squad invite indicator
      // Позиция X индикатора приглашения в динамический взвод
      "inviteIndicatorX": 0,
      // Y position offset of dynamic squad invite indicator
      // Позиция Y индикатора приглашения в динамический взвод
      "inviteIndicatorY": 0,
      // Extra fields.
      // Дополнительные поля.
      "extraFields": {
        "leftPanel": {
          "x": 0, // from left side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for left panel
          // Набор форматов для левой панели
          // example:
          // "formats": [
          //   // simple format (just a text)
          //   "{{nick}}",
          //   "<img src='xvm://res/img/panel-bg-l-{{alive|dead}}.png' width='318' height='28'>",
          //   // extended format
          //   { "x": 20, "y": 10, "borderColor": "0xFFFFFF", "format": "{{nick}}" },
          //   { "x": 200, "src": "xvm://res/contour/{{vehiclename}}.png" },
          //   { "x": 200, "src": "img://gui/maps/icons/vehicle/{{vehiclename}}.png" }
          // ]
          "formats": []
        },
        "rightPanel": {
          "x": 0, // from right side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for right panel (extended format supported, see above)
          // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
          "formats": []
        }
      }
    },
    // Options for the "short" panels - panels with frags and vehicle icon.
    // Режим ушей "short" - короткие уши (фраги и иконка танка).
    "short": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "vehicle", "nick".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "vehicle", "nick".
      "standardFields": [ "frags" ],
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 0,
      // true - disable platoon icons.
      // true - убрать отображение иконок взвода.
      "removeSquadIcon": true,
      // transparency of the squad icon
      // прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": -15,
      "vehicleIconXOffsetRight": -17,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 0,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": "{{xvm-stat?{{r_size=2?86|98}}|47}}",
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": ${ "def.textFieldShadow" },
      "fragsShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player name (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": ${ "def.textFieldShadow" },
      "nickShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": ${ "def.textFieldShadow" },
      "vehicleShadowRight": ${ "def.textFieldShadow" },
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        ${ "def.shortSelected" },
        ${ "def.squad" },
        ${ "def.shortHpMarkLeft" },
        ${ "def.shortFrags" },
        ${ "def.shortRatingLeft" },
        ${ "def.xmqpServiceMarker" }
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        ${ "def.squad" },
        ${ "def.shortHpMarkRight" },
        ${ "def.shortFrags" },
        ${ "def.shortRatingRight" },
        ${ "def.enemySpottedMarker" }
      ]
    },
    // Options for the "medium" panels - the first of the medium panels.
    // Режим ушей "medium" - первые средние уши в игре.
    "medium": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "vehicle", "nick".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "vehicle", "nick".
      "standardFields": [ "frags" ],
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 0,
      // true - disable platoon icons.
      // true - убрать отображение иконок взвода.
      "removeSquadIcon": true,
      // transparency of the squad icon
      // прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": -15,
      "vehicleIconXOffsetRight": -17,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 0,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": "{{xvm-stat?{{r_size=2?213|225}}|173}}",
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": ${ "def.textFieldShadow" },
      "fragsShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player name (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": ${ "def.textFieldShadow" },
      "nickShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": ${ "def.textFieldShadow" },
      "vehicleShadowRight": ${ "def.textFieldShadow" },
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        ${ "def.mediumSelected" },
        ${ "def.squad" },
        ${ "def.mediumHpMarkLeft" },
        ${ "def.mediumBattles" },
        ${ "def.mediumNameLeft" },
        ${ "def.mediumHpBarBgDimmerLeft" },
        ${ "def.mediumHpBarBg" },
        ${ "def.mediumHpBar" },
        ${ "def.mediumHpKnown" },
        ${ "def.mediumHpUnknown" },
        ${ "def.mediumHpDead" },
        ${ "def.mediumFrags" },
        ${ "def.mediumRating" },
        ${ "def.xmqpServiceMarker" }
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        ${ "def.squad" },
        ${ "def.mediumHpMarkRight" },
        ${ "def.mediumNameRight" },
        ${ "def.mediumHpBarBgDimmerRight" },
        ${ "def.mediumHpBarBg" },
        ${ "def.mediumHpBar" },
        ${ "def.mediumHpKnown" },
        ${ "def.mediumHpUnknown" },
        ${ "def.mediumHpDead" },
        ${ "def.mediumFrags" },
        ${ "def.mediumBattles" },
        ${ "def.mediumFrags" },
        ${ "def.mediumRating" },
        ${ "def.enemySpottedMarker" }
      ]
    },
    // Options for the "medium2" panels - the second of the medium panels.
    // Режим ушей "medium2" - вторые средние уши в игре.
    "medium2": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "vehicle", "nick".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "vehicle", "nick".
      "standardFields": [ "frags" ],
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 0,
      // true - disable platoon icons.
      // true - убрать отображение иконок взвода.
      "removeSquadIcon": true,
      // transparency of the squad icon
      // прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": -15,
      "vehicleIconXOffsetRight": -17,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 0,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": "{{xvm-stat?213|173}}",
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": ${ "def.textFieldShadow" },
      "fragsShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player name (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": ${ "def.textFieldShadow" },
      "nickShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": ${ "def.textFieldShadow" },
      "vehicleShadowRight": ${ "def.textFieldShadow" },
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        ${ "def.medium2Selected" },
        ${ "def.squad" },
        ${ "def.mediumHpMarkLeft" },
        ${ "def.medium2Battles" },
        ${ "def.mediumNameLeft" },
        ${ "def.mediumHpBarBgDimmerLeft" },
        ${ "def.mediumHpBarBg" },
        ${ "def.mediumHpBar" },
        ${ "def.mediumHpKnown" },
        ${ "def.mediumHpUnknown" },
        ${ "def.mediumHpDead" },
        ${ "def.mediumFrags" },
        ${ "def.medium2Rating" },
        ${ "def.xmqpServiceMarker" }
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        ${ "def.squad" },
        ${ "def.mediumHpMarkRight" },
        ${ "def.mediumNameRight" },
        ${ "def.mediumHpBarBgDimmerRight" },
        ${ "def.mediumHpBarBg" },
        ${ "def.mediumHpBar" },
        ${ "def.mediumHpKnown" },
        ${ "def.mediumHpUnknown" },
        ${ "def.mediumHpDead" },
        ${ "def.mediumFrags" },
        ${ "def.medium2Battles" },
        ${ "def.mediumFrags" },
        ${ "def.medium2Rating" },
        ${ "def.enemySpottedMarker" }
      ]
    },
    // Options for the "large" panels - the widest panels.
    // Режим ушей "large" - широкие уши в игре.
    "large": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "vehicle", "nick".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "vehicle", "nick".
      "standardFields": [ "frags" ],
      // true - disable platoon icons.
      // true - убрать отображение иконок взвода.
      "removeSquadIcon": true,
      // transparency of the squad icon
      // прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": -15,
      "vehicleIconXOffsetRight": -17,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 0,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": "{{xvm-stat?{{r_size=2?260|272}}|173}}",
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": ${ "def.textFieldShadow" },
      "fragsShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player name (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": ${ "def.textFieldShadow" },
      "nickShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": ${ "def.textFieldShadow" },
      "vehicleShadowRight": ${ "def.textFieldShadow" },
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        ${ "def.largeSelected" },
        ${ "def.squad" },
        ${ "def.largeHpMarkLeft" },
        ${ "def.largeBattlesLeft" },
        ${ "def.largeNameLeft" },
        ${ "def.largeHpBarBgDimmerLeft" },
        ${ "def.largeHpBarBg" },
        ${ "def.largeHpBar" },
        ${ "def.largeHpKnown" },
        ${ "def.largeHpUnknown" },
        ${ "def.largeHpDead" },
        ${ "def.largeFrags" },
        ${ "def.largeRatingLeft" },
        ${ "def.xmqpServiceMarker" }
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        ${ "def.squad" },
        ${ "def.largeHpMarkRight" },
        ${ "def.largeBattlesRight" },
        ${ "def.largeNameRight" },
        ${ "def.largeHpBarBgDimmerRight" },
        ${ "def.largeHpBarBg" },
        ${ "def.largeHpBar" },
        ${ "def.largeHpKnown" },
        ${ "def.largeHpUnknown" },
        ${ "def.largeHpDead" },
        ${ "def.largeFrags" },
        ${ "def.largeRatingRight" },
        ${ "def.enemySpottedMarker" }
      ]
    }
  }
}