/**
 * Color settings.
 * Настройки цветов.
 */
{
  "def": {
     // System and damage color definition.
     // Шаблон системного цвета и цвета для урона.
    "al": "0x60FF00",  // ally       / союзник
    "sq": "0xFF914C",  // squadman   / взводный
    "tk": "0x00EAFF",  // teamKiller / тимкиллер
    "en": "0xFE0E00",  // enemy      / противник
    "pl": "0xFFCC66",  // player     / игрок
     // Dynamic color definition.
     // Шаблон динамического цвета.
    "color0": "0xDBDBDB",  // neutral       / нейтрально
    "color1": "0xFE0E00",  // bad           / плохо
    "color2": "0xFE7903",  // below average / ниже среднего
    "color3": "0xF8F400",  // normal        / средне
    "color4": "0x60FF00",  // good          / хорошо
    "color5": "0x02C9B3",  // very good     / очень хорошо
    "color6": "0xD042F3",  // skillful      / мастерски
     // HP dynamic color definition.
     // Шаблон динамического цвета для здоровья.
    "hpColor1":	"0xFC857E",  // low           / низкий
    "hpColor2":	"0xFFC266",  // below average / ниже среднего
    "hpColor3":	"0xFFFFFF",  // average       / средний
    "hpColor4":	"0xFFFFFF"   // above-average / выше среднего
  },
  "colors": {
    // System colors.
    // Системные цвета.
    "system": {
      // Format: object_state
      // Object: ally, squadman, teamKiller, enemy
      // State: alive, dead, blowedup
      // ----
      // Формат: объект_состояние
      // Объект: ally - союзник, squadman - взводный, teamKiller - тимкиллер, enemy - противник
      // Состояние: alive - живой, dead - мертвый, blowedup - взорвана боеукладка
      //Союзник
      "ally_alive":          ${ "def.al" }, // живой
      "ally_dead":           "0x008A00",    // мертвый
      "ally_blowedup":       "0x008A00",    // взорван БК
      //Взводный
      "squadman_alive":      ${ "def.sq" }, // живой
      "squadman_dead":       "0xCA7000",    // мертвый
      "squadman_blowedup":   "0xCA7000",    // взорван БК
      //Тимкиллер
      "teamKiller_alive":    ${ "def.tk" }, // живой
      "teamKiller_dead":     "0x097783",    // мертвый
      "teamKiller_blowedup": "0x097783",    // взорван БК
      //Противник
      "enemy_alive":         ${ "def.en" }, // живой
      "enemy_dead":          "0xB30B02",    // мертвый
      "enemy_blowedup":      "0xB30B02",    // взорван БК
      "ally_base":           ${ "def.al" }, // база союзников
      "enemy_base":          ${ "def.en" }  // база противников
    },
    // Dynamic color by damage kind.
    // Динамический цвет по типу урона.
    "dmg_kind": {
      "shot":            "0xFFAA55",  // попадание
      "fire":            "0xFF2C00",  // пожар
      "ramming":         "0x577A3D",  // таран
      "world_collision": "0x805A37",  // столкновение с объектами, падение
      "death_zone":      "0xCCCCCC",  // выход из игровой зоны
      "drowning":        "0x265CFF",  // затопление
      "other":           "0xCCCCCC"   // другое
    },
    // Dynamic color by vehicle type.
    // Динамический цвет по типу техники.
    "vtype": {
      // Цвет для легких танков.
      "LT": "0xA2FF9A",
      // Цвет для средних танков.
      "MT": "0xFFF198",
      // Цвет для тяжелых танков.
      "HT": "0xCCCCCC",
      // Цвет для арты.
      "SPG": "0xFFACAC",
      // Цвет для ПТ.
      "TD": "0xA0CFFF",
      // Цвет для премиумной техники.
      "premium": "0xFFC363",
      // Включить/выключить использование премиумного цвета.
      "usePremiumColor": false
    },
    // Dynamic color by spotted status
    // Динамический цвет по статусу засвета
    "spotted": {
      "neverSeen":      "0x800600",
      "lost":           "0xBFBFBF",
      "spotted":        "0xFE0E00",
      "dead":           "0x595959",
      "neverSeen_arty": "0x800600",
      "lost_arty":      "0xBFBFBF",
      "spotted_arty":   "0xFE0E00",
      "dead_arty":      "0x595959"
    },
    // HP color depending on the ratio of ally and enemy teams hp.
    // Цвет ХП в зависимости от отношения хп союзной и вражеской команд.
    "totalHP": {
      "bad":     "0xFE0E00",
      "neutral": "0xFFFFFF",
      "good":    "0x60FF00"
    },
    // Color settings for damage.
    // Настройки цвета для урона.
  "damage": {
      // Format: src_dst_type.
      // Src:  ally, squadman, enemy, unknown, player.
      // Dst:  ally, squadman, allytk, enemytk, enemy.
      // Type: hit, kill, blowup.
      // ----
      // Формат: источник_получатель_тип.
      // Источник: ally - союзник, squadman - взводный, enemy - противник, unknown - неизвестный (не виден игроку), player - игрок.
      // Получатель: ally, squadman, enemy, allytk - союзник тимкиллер, enemytk - противник тимкиллер.
      // Тип: hit - попадание, kill - убийство, blowup - боеукладка.
      "ally_ally_hit":            "0x00CCFF",     // "teamKiller"
      "ally_ally_kill":	          ${ "def.tk" },  // "teamKiller"
      "ally_ally_blowup":	  ${ "def.tk" },  // "teamKiller"
      "ally_squadman_hit":	  "0x00CCFF",	    // "teamKiller"
      "ally_squadman_kill":	  ${ "def.tk" },  // "teamKiller"
      "ally_squadman_blowup":	  ${ "def.tk" },  // "teamKiller"
      "ally_enemy_hit":		  ${ "def.en" },  // "enemy"
      "ally_enemy_kill":          ${ "def.en" },  // "enemy"
      "ally_enemy_blowup":        ${ "def.en" },  // "enemy"
      "ally_allytk_hit":          "0x00CCFF",	    // "teamKiller"
      "ally_allytk_kill":	  ${ "def.tk" },  // "teamKiller"
      "ally_allytk_blowup":	  ${ "def.tk" },  // "teamKiller"
      "ally_enemytk_hit":	  ${ "def.en" },  // "enemy"
      "ally_enemytk_kill":        ${ "def.en" },  // "enemy"
      "ally_enemytk_blowup":      ${ "def.en" },  // "enemy"
      "squadman_ally_hit":        ${ "def.tk" },  // "teamKiller"
      "squadman_ally_kill":	  ${ "def.tk" },  // "teamKiller"
      "squadman_ally_blowup":	  ${ "def.tk" },  // "teamKiller"
      "squadman_squadman_hit":    ${ "def.tk" },  // "teamKiller"
      "squadman_squadman_kill":	  ${ "def.tk" },  // "teamKiller"
      "squadman_squadman_blowup": ${ "def.tk" },  // "teamKiller"
      "squadman_enemy_hit":	  ${ "def.sq" },  // "enemy"
      "squadman_enemy_kill":      ${ "def.sq" },  // "enemy"
      "squadman_enemy_blowup":    ${ "def.sq" },  // "enemy"
      "squadman_allytk_hit":      ${ "def.tk" },  // "teamKiller"
      "squadman_allytk_kill":	  ${ "def.tk" },  // "teamKiller"
      "squadman_allytk_blowup":	  ${ "def.tk" },  // "teamKiller"
      "squadman_enemytk_hit":	  ${ "def.sq" },  // "enemy"
      "squadman_enemytk_kill":    ${ "def.sq" },  // "enemy"
      "squadman_enemytk_blowup":  ${ "def.sq" },  // "enemy"
      "enemy_ally_hit":           "0x36AD00", 	  // "ally"
      "enemy_ally_kill":          ${ "def.al" },  // "ally"
      "enemy_ally_blowup":        ${ "def.al" },  // "ally"
      "enemy_squadman_hit":	  "0xFF7D2E",	    // "squadman"
      "enemy_squadman_kill":      ${ "def.sq" },  // "squadman"
      "enemy_squadman_blowup":    ${ "def.sq" },  // "squadman"
      "enemy_enemy_hit":          ${ "def.en" },  // "enemy"
      "enemy_enemy_kill":	  ${ "def.en" },  // "enemy"
      "enemy_enemy_blowup":	  ${ "def.en" },  // "enemy"
      "enemy_allytk_hit":	  "0x36AD00",     // "ally"
      "enemy_allytk_kill":        ${ "def.al" },  // "ally"
      "enemy_allytk_blowup":      ${ "def.al" },  // "ally"
      "enemy_enemytk_hit":        ${ "def.en" },  // "enemy"
      "enemy_enemytk_kill":	  ${ "def.en" },  // "enemy"
      "enemy_enemytk_blowup":	  ${ "def.en" },  // "enemy"
      "unknown_ally_hit":	  "0x36AD00",     // "ally"
      "unknown_ally_kill":        ${ "def.al" },  // "ally"
      "unknown_ally_blowup":      ${ "def.al" },  // "ally"
      "unknown_squadman_hit":	  "0xFF7D2E",     // "squadman"
      "unknown_squadman_kill":    ${ "def.sq" },  // "squadman"
      "unknown_squadman_blowup":  ${ "def.sq" },  // "squadman"
      "unknown_enemy_hit":        ${ "def.en" },  // "enemy"
      "unknown_enemy_kill":	  ${ "def.en" },  // "enemy"
      "unknown_enemy_blowup":	  ${ "def.en" },  // "enemy"
      "unknown_allytk_hit":	  "0x36AD00",     // "ally"
      "unknown_allytk_kill":      ${ "def.al" },  // "ally"
      "unknown_allytk_blowup":    ${ "def.al" },  // "ally"
      "unknown_enemytk_hit":      ${ "def.en" },  // "enemy"
      "unknown_enemytk_kill":	  ${ "def.en" },  // "enemy"
      "unknown_enemytk_blowup":	  ${ "def.en" },  // "enemy"
      "player_ally_hit":          ${ "def.pl" },  // "me"
      "player_ally_kill":	  ${ "def.pl" },  // "me"
      "player_ally_blowup":	  ${ "def.pl" },  // "me"
      "player_squadman_hit":      ${ "def.pl" },  // "me"
      "player_squadman_kill":	  ${ "def.pl" },  // "me" 
      "player_squadman_blowup":	  ${ "def.pl" },  // "me"
      "player_enemy_hit":	  ${ "def.pl" },  // "me"
      "player_enemy_kill":        ${ "def.pl" },  // "me"
      "player_enemy_blowup":      ${ "def.pl" },  // "me"
      "player_allytk_hit":        ${ "def.pl" },  // "me"
      "player_allytk_kill":	  ${ "def.pl" },  // "me"
      "player_allytk_blowup":	  ${ "def.pl" },  // "me"
      "player_enemytk_hit":	  ${ "def.pl" },  // "me"
      "player_enemytk_kill":      ${ "def.pl" },  // "me"
      "player_enemytk_blowup":    ${ "def.pl" }   // "me"
    },
    // Values ​​below should be from smaller to larger.
    // Значения ниже должны быть от меньшего к большему.
    // ----
    // Dynamic color by remaining absolute health.
    // Динамический цвет по оставшемуся здоровью.
    "hp": [
      { "value": 201,  "color": ${ "def.hpColor1" } },
      { "value": 401,	 "color": ${ "def.hpColor2" } },
      { "value": 1001, "color": ${ "def.hpColor3" } },
      { "value": 9999, "color": ${ "def.hpColor4" } }
    ],
    // Dynamic color by remaining health percent.
    // Динамический цвет по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 24.5, "color": ${ "def.hpColor1" } },
      { "value": 49.5, "color": ${ "def.hpColor2" } },
      { "value": 74.5, "color": ${ "def.hpColor3" } },
      { "value": 101,  "color": ${ "def.hpColor4" } }
    ],
    // Dynamic color for XVM Scale.
    // Динамический цвет по шкале XVM.
    // http://www.koreanrandom.com/forum/topic/2625-/
    "x": [
      { "value": 16.5, "color": ${ "def.color1" } },   //    0 - 16.5 - bad           (20% of players)
      { "value": 33.5, "color": ${ "def.color2" } },   // 16.5 - 33.5 - below average (better then 20% of players)
      { "value": 52.5, "color": ${ "def.color3" } },   // 33.5 - 52.5 - normal        (better then 60% of players)
      { "value": 75.5, "color": ${ "def.color4" } },   // 52.5 - 75.5 - good          (better then 90% of players)
      { "value": 92.5, "color": ${ "def.color5" } },   // 75.5 - 92.5 - very good     (better then 99% of players)
      { "value": 999,  "color": ${ "def.color6" } }    // 92.5 - XX   - skillful      (better then 99.9% of players)
    ],
    // Dynamic color by efficiency.
    // Динамический цвет по эффективности.
    "eff": [
      { "value": 610,  "color": ${ "def.color1" } },
      { "value": 875,  "color": ${ "def.color2" } },
      { "value": 1175, "color": ${ "def.color3" } },
      { "value": 1540, "color": ${ "def.color4" } },
      { "value": 1880, "color": ${ "def.color5" } },
      { "value": 9999, "color": ${ "def.color6" } } 
    ],
    // Dynamic color by WN6 rating
    // Динамический цвет по рейтингу WN6
    "wn6": [
      { "value": 470,  "color": ${ "def.color1" } },
      { "value": 860,  "color": ${ "def.color2" } },
      { "value": 1225, "color": ${ "def.color3" } },
      { "value": 1635, "color": ${ "def.color4" } },
      { "value": 1990, "color": ${ "def.color5" } },
      { "value": 9999, "color": ${ "def.color6" } }
    ],
    // Dynamic color by WN8 rating
    // Динамический цвет по рейтингу WN8
    "wn8": [
      { "value": 400,  "color": ${ "def.color1" } },
      { "value": 900,  "color": ${ "def.color2" } },
      { "value": 1470, "color": ${ "def.color3" } },
      { "value": 2180, "color": ${ "def.color4" } },
      { "value": 2880, "color": ${ "def.color5" } },
      { "value": 9999, "color": ${ "def.color6" } }
    ],
    // Dynamic color by WG rating
    // Динамический цвет по рейтингу WG
    "wgr": [
      { "value": 2555,  "color": ${ "def.color1" } },
      { "value": 4435,  "color": ${ "def.color2" } },
      { "value": 6515,  "color": ${ "def.color3" } },
      { "value": 8730,  "color": ${ "def.color4" } },
      { "value": 10175, "color": ${ "def.color5" } },
      { "value": 99999, "color": ${ "def.color6" } }
    ],
    // Dynamic color for win chance
    // Динамический цвет для шанса на победу
    "winChance": [
      { "value": 24.5, "color": ${ "def.color1" } },
      { "value": 39.5, "color": ${ "def.color2" } },
      { "value": 59.5, "color": ${ "def.color3" } },
      { "value": 74.5, "color": ${ "def.color4" } },
      { "value": 89.5, "color": ${ "def.color5" } },
      { "value": 101,  "color": ${ "def.color6" } }
    ],
    // Dynamic color by win percent.
    // Динамический цвет по проценту побед.
    "winrate": [
      { "value": 46.5, "color": ${ "def.color1" } },
      { "value": 48.5, "color": ${ "def.color2" } },
      { "value": 52.5, "color": ${ "def.color3" } },
      { "value": 57.5, "color": ${ "def.color4" } },
      { "value": 64.5, "color": ${ "def.color5" } },
      { "value": 101,  "color": ${ "def.color6" } }
    ],
    // Dynamic color by kilo-battles.
    // Динамический цвет по количеству кило-боев.
    "kb": [
      { "value": 1.5,  "color": ${ "def.color1" } },   //    0 - 1.5
      { "value": 4.5,  "color": ${ "def.color2" } },   //  1.5 - 4.5
      { "value": 8.5,  "color": ${ "def.color3" } },   //  4.5 - 8.5
      { "value": 13.5, "color": ${ "def.color4" } },   //  8.5 - 13.5
      { "value": 19.5, "color": ${ "def.color5" } },   // 13.5 - 19.5
      { "value": 999,  "color": ${ "def.color6" } }    // 19.5 - *
    ],
    // Dynamic color by average level of player tanks.
    // Динамический цвет по среднему уровню танков игрока.
    "avglvl": [
      { "value": 4.5, "color": ${ "def.color1" } },
      { "value": 7.5, "color": ${ "def.color0" } },
      { "value": 11,  "color": ${ "def.color6" } }
    ],
    // Dynamic color by battles on current tank.
    // Динамический цвет по количеству боев на текущем танке.
    "t_battles": [
      { "value": 150,   "color": ${ "def.color1" } },  //    0h - 1.5h
      { "value": 350,   "color": ${ "def.color2" } },  //  1.5h - 3.5h
      { "value": 650,   "color": ${ "def.color3" } },  //  3.5h - 6.5h
      { "value": 1050,  "color": ${ "def.color4" } },  //  6.5h - 10.5h
      { "value": 1750,  "color": ${ "def.color5" } },  // 10.5h - 17.5h
      { "value": 99999, "color": ${ "def.color6" } }   // 17.5h - *
    ],
    // Dynamic color by average damage on current tank.
    // Динамический цвет по среднему урону за бой на текущем танке.
    "tdb": [
      { "value": 500,  "color": ${ "def.color1" } },
      { "value": 750,  "color": ${ "def.color2" } },
      { "value": 1000, "color": ${ "def.color3" } },
      { "value": 1800, "color": ${ "def.color4" } },
      { "value": 2500, "color": ${ "def.color5" } },
      { "value": 9999, "color": ${ "def.color6" } }
    ],
    // Dynamic color by average damage efficiency on current tank.
    // Динамический цвет по эффективности урона за бой на текущем танке.
    "tdv": [
      { "value": 0.6, "color": ${ "def.color1" } },
      { "value": 0.8, "color": ${ "def.color2" } },
      { "value": 1.0, "color": ${ "def.color3" } },
      { "value": 1.3, "color": ${ "def.color4" } },
      { "value": 2.0, "color": ${ "def.color5" } },
      { "value": 15,  "color": ${ "def.color6" } }
    ],
    // Dynamic color by average frags per battle on current tank.
    // Динамический цвет по среднему количеству фрагов за бой на текущем танке.
    "tfb": [
      { "value": 0.6, "color": ${ "def.color1" } },
      { "value": 0.8, "color": ${ "def.color2" } },
      { "value": 1.0, "color": ${ "def.color3" } },
      { "value": 1.3, "color": ${ "def.color4" } },
      { "value": 2.0, "color": ${ "def.color5" } },
      { "value": 15,  "color": ${ "def.color6" } }
    ],
    // Dynamic color by number of spotted enemies per battle on current tank.
    // Динамический цвет по среднему количеству засвеченных врагов за бой на текущем танке.
    "tsb": [
      { "value": 0.6, "color": ${ "def.color1" } },
      { "value": 0.8, "color": ${ "def.color2" } },
      { "value": 1.0, "color": ${ "def.color3" } },
      { "value": 1.3, "color": ${ "def.color4" } },
      { "value": 2.0, "color": ${ "def.color5" } },
      { "value": 15,  "color": ${ "def.color6" } }
    ],
    // Dynamic color by WN8 effective damage
    // Динамический цвет по эффективному урону по WN8
    "wn8effd": [
      { "value": 0.6, "color": ${ "def.color1" } },
      { "value": 0.8, "color": ${ "def.color2" } },
      { "value": 1.0, "color": ${ "def.color3" } },
      { "value": 1.3, "color": ${ "def.color4" } },
      { "value": 2.0, "color": ${ "def.color5" } },
      { "value": 15,  "color": ${ "def.color6" } }
    ],
    // Dynamic color by damage rating (percents for marks on gun)
    // Динамический цвет по рейтингу урона (процент для отметок на стволе)
    "damageRating": [
      { "value": 65,  "color": ${ "def.color1" } },
      { "value": 85,  "color": ${ "def.color3" } },
      { "value": 95,  "color": ${ "def.color4" } },
      { "value": 101, "color": ${ "def.color6" } }
    ],
    // Dynamic color by hit ratio (percents of hits)
    // Динамический цвет по проценту попаданий
    "hitsRatio": [
      { "value": 47.5, "color": ${ "def.color1" } },
      { "value": 60.5, "color": ${ "def.color2" } },
      { "value": 68.5, "color": ${ "def.color3" } },
      { "value": 74.5, "color": ${ "def.color4" } },
      { "value": 78.5, "color": ${ "def.color5" } },
      { "value": 101,  "color": ${ "def.color6" } }
    ]
  }
}