/**
 * Options for dead without Alt markers.
 * Настройки маркеров для трупов без Alt.
 */
{
  // Definitions
  // Шаблоны
  "def": {
    // Floating damage values.
    // Всплывающий урон.
    "damageText": {                           //  всплывающий урон
            "enabled": true,                  //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": -95,                         //  положение по оси Y
            "alpha": 100,                     //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
            "textFormat": {                   //  параметры шрифта
              "font": "$FieldFont",           //  название
              "size": 17,                     //  размер
              "color": "{{c:dmg}}",           //  цвет (допускается использование динамического цвета, см. macros.txt)
              "bold": false,                  //  обычный (false) или жирный (true)
              "italic": false                 //  обычный (false) или курсив (true)
            },
            "shadow": {                       //  параметры тени
              "enabled": true,                //  false - не отображать
              "color": "0x000000",            //  цвет
              "alpha": 100,                   //  прозрачность
              "blur": 1,                      //  размытие
              "strength": 1.5,                //  интенсивность
              "distance": 0,                  //  дистанция смещения
              "angle": 0                      //  угол смещения
            },
            "speed": 3,                       //  время отображения отлетающего урона
            "maxRange": 80,                   //  расстояние, на которое отлетает урон
      "damageMessage": "{{dmg}}",             //  текст при обычном уроне (см. описание макросов в macros.txt)
      "blowupMessage": "{{l10n:blownUp}}"     //  текст при взрыве боеукладки (см. описание макросов в macros.txt)
    },
    // Text fields.
    // Текстовые поля.
    "textFields": [
            //  Маркер мертвого
            {
              "name": "dead mark",            //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": -32,                       //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "XVMSymbol",          //  название
                "size": 31,                   //  размер
                "color": "0xB3B3B3",          //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": false,                //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "shadow": {                     //  параметры тени
                "enabled": true,              //  false - не отображать
                "color": "{{c:system}}",      //  цвет
                "alpha": 100,                 //  прозрачность
                "blur": 1,                    //  размытие
                "strength": 2,                //  интенсивность
                "distance": 0,                //  дистанция смещения
                "angle": 0                    //  угол смещения
              },
              "format": "&#x4F;"              //  формат текста. См. описание макросов в macros.txt
            }
       ]
  },
  "ally": {
          "healthBar": {                      //  индикатор здоровья
            "enabled": false,                 //  false - не отображать
            "x": -31,                         //  положение по оси X
            "y": -37,                         //  положение по оси Y
            "alpha": 100,                     //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
            "color": "{{c:system}}",          //  цвет основной (допускается использование динамического цвета, см. macros.txt)
            "lcolor": "{{c:system}}",         //  цвет дополнительный (для градиента)
            "width": 60,                      //  ширина полосы здоровья
            "height": 3,                      //  высота полосы здоровья
            "border": {                       //  параметры подложки и рамки
              "alpha": 30,                    //  прозрачность
              "color": "0x000000",            //  цвет
              "size": 1                       //  размер рамки
            },
            "fill": {                         //  параметры оставшегося здоровья
              "alpha": 70                     //  прозрачность
            },                                //
            "damage": {                       //  параметры анимации отнимаемого здоровья
              "alpha": 80,                    //  прозрачность
              "color": "0xFFFFFF",            //  цвет
              "fade": 1                       //  время затухания в секундах
            }
          },
          "vehicleIcon": {                    //  иконка типа танка (тт/ст/лт/пт/арта)
            "enabled": true,                  //  false - не отображать
            "showSpeaker": false,             //  true - Показывать спикер даже если visible=false
            "x": 0,                           //  положение по оси X
            "y": -16,                         //  положение по оси Y
            "alpha": 100,                     //  прозрачность
            "maxScale": 100,                  //  максимальный масштаб (по умолчанию 100)
            "offsetX": 0,                     //  смещение по оси X (?)
            "offsetY": 0                      //  смещение по оси Y (?)
          },
          "contourIcon": {                    //  иконки танка
            "enabled": false,                 //  false - не отображать
            "x": 6,                           //  положение по оси X
            "y": -65,                         //  положение по оси Y
            "alpha": 100,                     //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
            "color": "{{c:system}}",          //  цвет (допускается использование динамического цвета, см. macros.txt)
            "amount": 0                       //  интенсивность цвета от 0 до 100. По умолчанию 0, т.е. выключено.
          },
          "actionMarker": {                   //  маркеры "Нужна помощь" и "Атакую"
            "enabled": true,                  //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": -100,                        //  положение по оси Y
            "alpha": 100                      //  прозрачность
          },
          "levelIcon": {                      //  уровень танка
            "enabled": false,                 //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": -21,                         //  положение по оси Y
            "alpha": 100                      //  прозрачность
          },
          "damageText": {
            "$ref": { "path": "def.damageText" },
            "damageMessage": "<font face='XVMSymbol' size='24'>&#x2B;</font>\n<b>{{vehicle}}</b>",      //  текст при обычном уничтожении
            "blowupMessage": "<font face='XVMSymbol' size='24'>&#x2C;</font>\n<b>{{vehicle}}</b>"       //  текст при взрыве боеукладки
          },
          "damageTextPlayer": {
            "$ref": { "path": "def.damageText" },
            "damageMessage": "<font face='XVMSymbol' size='40'>&#x4D;</font>\n<b>{{vehicle}}</b>",      //  текст при обычном уничтожении
            "blowupMessage": "<font face='XVMSymbol' size='33'>&#x4E;</font>\n<b>{{vehicle}}</b>"       //  текст при взрыве боеукладки
          },
          "damageTextSquadman": {
            "$ref": { "path": "def.damageText" },
            "damageMessage": "<font face='XVMSymbol' size='28'>&#x106;</font>\n<b>{{vehicle}}</b>",      //  текст при обычном уничтожении
            "blowupMessage": "<font face='XVMSymbol' size='28'>&#x107;</font>\n<b>{{vehicle}}</b>"       //  текст при взрыве боеукладки
          },
          //  Блок текстовых полей
          "textFields": 
            ${ "def.textFields" }
    },
  "enemy": {
            "$ref": { "path": "ally" },
          "damageTextSquadman": {
            "$ref": { "path": "def.damageText" },
            "damageMessage": "<font face='XVMSymbol' size='28'>&#x4B;</font>\n<b>{{vehicle}}</b>",      //  текст при обычном уничтожении
            "blowupMessage": "<font face='XVMSymbol' size='28'>&#x4C;</font>\n<b>{{vehicle}}</b>"       //  текст при взрыве боеукладки
          }
    }
}