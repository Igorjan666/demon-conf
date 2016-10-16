/**
 * Parameters of the Battle Loading screen.
 * Параметры экрана загрузки боя.
 */
{
  // Definitions
  // Шаблоны
  "def": {
    // Топ клан.
    "topClan": { "x": "{{r_size=2?-170|-182}}", "y": -1, "bindToIcon": true,
      "format": "<font face='XVMSymbol' size='24' color='#FFCC66' alpha='{{alive?#FF|#80}}'>{{topclan}}</font>"
    }
  },
  "battleLoadingTips": {
    "$ref": { "file": "battleLoading.xc", "path": "battleLoading" },
    // Show border for name field (useful for config tuning)
    // Показывать рамку для поля имени игрока (полезно для настройки конфига)
    "nameFieldShowBorder": false,
    // Show border for vehicle field (useful for config tuning)
    // Показывать рамку для поля имени танка (полезно для настройки конфига)
    "vehicleFieldShowBorder": false,
    // X offset for allies squad icons
    // Смещение по оси X значка взвода союзников
    "squadIconOffsetXLeft": "{{xvm-stat?-139|0}}",
    // X offset for enemies squad icons field
    // Смещение по оси X значка взвода для противников
    "squadIconOffsetXRight": "{{xvm-stat?-138|0}}",
    // X offset for allies player names field
    // Смещение по оси X поля ника союзников
    "nameFieldOffsetXLeft": "{{xvm-stat?-147|-6}}",
    // Width delta for allies player names field
    // Изменение ширины поля ника союзников
    "nameFieldWidthDeltaLeft": 120,
    // X offset for enemies player names field
    // Смещение по оси X поля ника противников
    "nameFieldOffsetXRight": "{{xvm-stat?-141|-1}}",
    // Width delta for enemies player names field
    // Изменение ширины поля ника противников
    "nameFieldWidthDeltaRight": 120,
    // X offset for allies vehicle names field
    // Смещение по оси X поля названия танка союзников
    "vehicleFieldOffsetXLeft": 0,
    // Width delta for allies vehicle names field
    // Изменение ширины поля названия танка союзников
    "vehicleFieldWidthDeltaLeft": 130,
    // X offset for enemies vehicle names field
    // Смещение по оси X поля названия танка противников
    "vehicleFieldOffsetXRight": 0,
    // Width delta for enemies vehicle names field
    // Изменение ширины поля названия танка противников
    "vehicleFieldWidthDeltaRight": 130,
    // X offset for allies vehicle icons
    // Смещение по оси X иконки танка союзников
    "vehicleIconOffsetXLeft": -24,
    // X offset for enemies vehicle icons
    // Смещение по оси X иконки танка противников
    "vehicleIconOffsetXRight": -18,
    // Extra fields. Fields are placed one above the other.
    // Дополнительные поля. Поля располагаются друг над другом.
    // Set of formats for left panel (extended format supported, see см. playersPanel.xc)
    // Набор форматов для левой панели (поддерживается расширенный формат, см. см. playersPanel.xc)
    "extraFieldsLeft": [
      ${ "def.topClan" }
    ],
    // Set of formats for right panel (extended format supported, see см. playersPanel.xc)
    // Набор форматов для правой панели (поддерживается расширенный формат, см. см. playersPanel.xc)
    "extraFieldsRight": [
      ${ "def.topClan" }
    ]
  }
}
