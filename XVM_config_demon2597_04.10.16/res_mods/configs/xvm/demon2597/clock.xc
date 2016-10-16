/**
 * Clock in hangar
 * Часы в ангаре
 */
{
  "clock": {
    // Show clock in hangar.
    // Показывать часы в ангаре.
    "enabled": true,
    // Horizontal position.
    // Положение по горизонтали.
    "x": -325,
    // Vertical position.
    // Положение по вертикали.
    "y": 0,
    // Width.
    // Ширина.
    "width": 180,
    // Height.
    // Высота.
    "height": 52,
    // true - place at top of other windows, false - at bottom.
    // true - отображать поверх остальных окон, false - под.
    "topmost": true,
    // Horizontal alignment of field at screen ("left", "center", "right").
    // Горизонтальное выравнивание поля на экране ("left", "center", "right").
    "align": "center",
    // Vertical alignment of field at screen ("top", "center", "bottom").
    // Вертикальное выравнивание поля на экране ("top", "center", "bottom").
    "valign": "top",
    // Horizontal alignment of text in field ("left", "center", "right").
    // Горизонтальное выравнивание текста внутри поля ("left", "center", "right").
    "textAlign": "right",
    // vertical alignment of text in field ("top", "center", "bottom").
    // Вертикальное выравнивание текста внутри поля ("top", "center", "bottom").
    "textVAlign": "top",
    // Transparency in percents [0..100].
    // Прозрачность в процентах [0..100].
    "alpha": 90,
    // Rotation in degrees [0..360].
    // Угол поворота в градусах [0..360].
    "rotation": 0,
    // If set, draw border with specified color ("0xXXXXXX").
    // Цвет границы, если задан ("0xXXXXXX").
    "borderColor": null,
    // If set, draw background with specified color ("0xXXXXXX").
    // Цвет фона, если задан ("0xXXXXXX").
    "bgColor": null,
    // If set, draw image at background.
    // Фоновое изображение, если задано.
    // example: "bgImage": "cfg://My/img/my.png",
    "bgImage": null,
    // Anti aliasing mode ("advanced" or "normal").
    // Тип сглаживания ("advanced" или "normal").
    "antiAliasType": "advanced",
    // Macros available (case sensitive):
    // Доступные макросы (чувствительны к регистру):
    //
    // {{Y}}     - full year (4 digits)       / год (4 цифры)
    // {{MMM}}   - full month name (January)  / Полное название месяца (Январь)
    // {{MM}}    - short month name (Jan)     / Укороченное название месяца (Янв)
    // {{M}}     - month number (1-12)        / номер месяца в году (1-12)
    // {{D}}     - day number (1-31)          / Номер дня в месяце (1-31)
    // {{WW}}    - full weekday name (Monday) / Полное название дня недели (Понедельник)
    // {{W}}     - short weekday name (Mon)   / Укороченное название дня недели (Пон)
    // {{h}}     - hour                       / часы
    // {{m}}     - minute                     / минуты
    // {{s}}     - second                     / секунды
    // {{H}}     - hour in 12-hour format     / часы в 12-часовом формате
    // {{AM|PM}} - AM/PM                      / AM/PM
    // Macros formatting allowed, for example: {{AM?a.m.|p.m.}}
    //
    // Clock format.
    // Формат часов.
    "format": "<font face='$FieldFont' color='#959586'><textformat leading='-37'><font size='36'>{{h%02d}}:{{m%02d}}</font></textformat>\n<textformat rightMargin='84' leading='-3'><font size='13'>{{WW}}</font>\n<font size='15'>{{D%02d}} {{MM}} {{Y}}</font></textformat></font>",
    // Shadow.
    // Тень.
    "shadow": {
      // false - no shadow.
      // false - без тени.
      "enabled": true,
      "distance": 0,             // (in pixels)     / дистанция смещения
      "angle": 0,                // (0.0 .. 360.0)  / угол смещения
      "color": "0x000000",       // "0xXXXXXX"      / цвет
      "alpha": 75,               // (0 .. 100)      / прозрачность
      "blur": 4,                 // (0.0 .. 255.0)  / размер
      "strength": 2              // (0.0 .. 255.0)  / интенсивность
    }
  }
}
