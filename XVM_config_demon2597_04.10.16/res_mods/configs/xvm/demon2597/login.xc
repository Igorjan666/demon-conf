/**
 * Parameters for login screen
 * Параметры экрана логина
 */
{
  "login": {
    // Save last server
    // Сохранять последний сервер
    "saveLastServer": true,
    // Auto enter to the game
    // Автоматический вход в игру
    "autologin": false,
    // Auto confirm old replays playing
    // Автоматически подтверждать проигрывание старых реплеев
    "confirmOldReplays": false,
    // Ping servers
    // Пинг серверов
    "pingServers": { "$ref": { "path": "login.onlineServers" },
      // true - Enable display of ping to the servers
      // true - Показывать пинг до серверов
      "enabled": true,
      // Update interval, in ms
      // Интервал обновления, в мс
      "updateInterval": 3000,
      // Axis field coordinates
      // Положение поля по осям
      "x": 15,
      "y": 38,
      // Horizontal alignment of field at screen ("left", "center", "right").
      // Горизонтальное выравнивание поля на экране ("left", "center", "right").
      "hAlign": "left",
      // Threshold values defining response quality
      // Пороговые значения, определяющие качество отклика
      "threshold": {
        // Below this value response is great
        // До этого значения отклик отличный
        "great": 35,
        // Below this value response is good
        // До этого значения отклик хороший
        "good": 60,
        // Below this value response is poor
        // До этого значения отклик так себе
        "poor": 100
        // Values above define bad response
        // Значения более считаются плохим откликом
      }
    },
    // Online servers
    // Онлайн серверов
    "onlineServers": {
      // true - Enable display online of servers
      // true - Показывать онлайн серверов
      "enabled": true,
      // Axis field coordinates
      // Положение поля по осям
      "x": -15,
      "y": 38,
      // Horizontal alignment of field at screen ("left", "center", "right").
      // Горизонтальное выравнивание поля на экране ("left", "center", "right").
      "hAlign": "right",
      // Vertical alignment of field at screen ("top", "center", "bottom").
      // Вертикальное выравнивание поля на экране ("top", "center", "bottom").
      "vAlign": "top",
      // Transparency
      // Прозрачность от 0 до 100
      "alpha": 90,
      // Server to value text delimiter
      // Разделитель сервера от значения
      "delimiter": "\n",
      // Maximum number of column rows
      // Максимальное количество строк одной колонки
      "maxRows": 2,
      // Gap between columns
      // Пространство между колонками
      "columnGap": 5,
      // Leading between lines.
      // Пространство между строками
      "leading": -1,
      // true - show title
      // true - показывать заголовок
      "showTitle": true,
      // true - show server names in list
      // true - показывать названия серверов в списке
      "showServerName": true,
      // expand server names to this amount of symbols. recommended to use monospace font if this option is set.
      // расширить названия серверов до данного количества символов. рекомендуется использовать моноширинный шрифт если данная опция задана.
      "minimalNameLength": 0,
      // expand values to this amount of symbols. recommended to use monospace font if this option is set.
      // расширить значения до данного количества символов. рекомендуется использовать моноширинный шрифт если данная опция задана.
      "minimalValueLength": 0,
      // text to show in case of error
      // текст показываемый в случае ошибки
      "errorString": "{{l10n:Not available short}}",
      // Text style
      // Стиль текста
      "fontStyle": {
        // Font name
        // Название шрифта
        "name": "$FieldFont",
        "size": 12, // Размер
        "bold": false,  // Жирный
        "italic": false, // Курсив
        // Values color scale
        // Цветовая градация значений
        "color": {
          "great": "0xFFCC66", // Отлично
          "good": "0xE5E4E1",  // Хорошо
          "poor": "0xA6A392",  // Так себе
          "bad": "0xF01818"    // Плохо
        },
        // Color for server name and delimiter (for example, "0x8080FF"). Empty string "" - use value color
        // Цвет для названия сервера и разделителя (например, "0x8080FF"). Пустая строка "" - использовать цвет значения
        "serverColor": ""
      },
      // Threshold values defining server online and thus shorter battle queue
      // Пороговые значения, определяющие количество человек онлайн и следовательно меньшую очередь в бой
      "threshold": {
        "great": 30000,
        "good": 10000,
        "poor": 3000
        //below this value the queue might be long
        //ниже этого значения очередь может быть долгой
      },
      // Параметры тени
      "shadow": {
        "enabled": true,
        "color": "0x000000",
        "distance": 0,
        "angle": 0,
        "alpha": 75,
        "blur": 4,
        "strength": 2
      }
    }
  }
}
