/**
 * Capture bar.
 * Полоса захвата.
 */
{
  "def": {
    // Text fields shadow definition.
    // Шаблон тени текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 50, "blur": 4, "strength": 2, "distance": 0, "angle": 0 }
  },
  "captureBar": {
    // false - Disable
    // false - Отключить
    "enabled": true,
    // Y value (34 for vanilla client)
    // Значение Y (34 для чистого клиента)
    "y": 60,
    // Change the distance between capture bars
    // Изменение расстояния между полосами захвата
    "distanceOffset": 0,
    // Hide capture progress bar
    // Спрятать полосу прогресса захвата
    "hideProgressBar": false,
    // Enemies capturing ally base
    // Противник захватывает базу союзников
    "enemy": {
      // Сapture bar color (default: use system color)
      // Цвет полосы захвата (по умолчанию используется системный цвет)
      "сolor": null,
      // Title textfield (upper-center)
      // Текстовое поле с заголовком (сверху, среднее)
      "title": {
        // X offset
        // Смещение по X
        "x": 0,
        // Y offset
        // Смещение по Y
        "y": -2,
        // Text format
        // Формат текста
        "format": "<font size='15' color='{{py:replace('{{.colors.system.enemy_alive}}', '0x', '#')}}'>{{l10n:allyBaseCapture}}</font>",
        // Full capture text format
        // Формат текста при полном захвате
        "done": "<font size='15' color='#FFCC66'>{{l10n:allyBaseCaptured}}</font><font size='17'>\n\n</font><font face='XVMSymbol'  size='183' color='#FFCC66'>           &#x41;</font>",
        // Fields shadow
        // Тень полей
        "shadow": ${ "def.textFieldShadow" }
      },
      // Vehicles count textfield (upper-left)
      // Текстовое поле с количеством танков (сверху, слева)
      "players": {
        "x": 0,
        "y": 0,
        "format": "<font face='XVMSymbol' size='15' color='#FFFFFF'>&#x113;</font>  <font color='#FFCC66'><b>{{cap.tanks}}</b></font>",
        "done": "<font face='XVMSymbol' size='15' color='#FFFFFF'>&#x113;</font>  <font color='#FFCC66'><b>{{cap.tanks}}</b></font>",
        "shadow": ${ "def.textFieldShadow" }
      },
      // Timer textfield (upper-right)
      // Текстовое поле с таймером (сверху, справа)
      "timer": {
        "x": 0,
        "y": 0,
        "format": "<font face='XVMSymbol' size='15' color='#FFFFFF'>&#x114;</font>  <font color='#FFCC66'><b>{{cap.time}}</b></font>",
        "done": "<font face='XVMSymbol' size='15' color='#FFFFFF'>&#x114;</font>  <font color='#FFCC66'><b>{{cap.time}}</b></font>",
        "shadow": ${ "def.textFieldShadow" }
      },
      // Capture points textfield (lower)
      // Текстовое поле с очками захвата (снизу)
      "points": {
        "x": 0,
        "y": 0,
        "format": "<font size='15' color='#FFFFFF'>{{cap.points%d~%}}</font>",
        "done": "<font size='15' color='#FFFFFF'>{{cap.points%d~%}}</font>",
        "shadow": ${ "def.textFieldShadow" }
      }
    },
    // Allies capturing enemy base
    // Союзники захватывают базу противника
    "ally": {
      "сolor": null,
      "title": {
        "$ref": { "path":"captureBar.enemy.title" },
        "format": "<font size='15' color='{{py:replace('{{.colors.system.ally_alive}}', '0x', '#')}}'>{{l10n:enemyBaseCapture}}</font>",
        "done": "<font size='15' color='#FFCC66'>{{l10n:enemyBaseCaptured}}</font><font size='19'>\n\n\n\n</font><font face='XVMSymbol' size='183' color='#FFCC66'>&#x40;           <font size='0'>&#x40;</font></font>"
      },
      "players": ${"captureBar.enemy.players"},
      "timer": ${"captureBar.enemy.timer"},
      "points": ${"captureBar.enemy.points"}
    }
  }
}
