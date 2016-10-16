/**
 * Options for dynamic transparency. Values ​​from smallest to largest.
 * Настройки динамической прозрачности. Значения от меньшего к большему.
 */
{
  "alpha": {
    // Dynamic transparency by spotted status
    // Динамическая прозрачность по статусу засвета
    "spotted": {
      "neverSeen":      100,
      "lost":           100,
      "spotted":        100,
      "dead":           50,
      "neverSeen_arty": 100,
      "lost_arty":      100,
      "spotted_arty":   100,
      "dead_arty":      50
    },
    // Dynamic transparency by remaining health.
    // Динамическая прозрачность по оставшемуся здоровью. 
    "hp": [
      { "value": 201,  "alpha": 100 },
      { "value": 401,  "alpha": 100 },
      { "value": 1001, "alpha": 100 },
      { "value": 9999, "alpha": 100 }
    ],
    // Dynamic transparency by percentage of remaining health.
    // Динамическая прозрачность по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 25.5, "alpha": 100 },
      { "value": 101, "alpha": 0 }
    ],
    // Dynamic transparency for XVM Scale.
    // Динамическая прозрачность по шкале XVM.
    "x": [
      { "value": 16.5, "alpha": 100 },   // 00   - 16.5 - bad           (20% of players)
      { "value": 33.5, "alpha": 100 },   // 16.5 - 33.5 - below average (better then 20% of players)
      { "value": 52.5, "alpha": 100 },   // 33.5 - 52.5 - normal        (better then 60% of players)
      { "value": 75.5, "alpha": 100 },   // 52.5 - 75.5 - good          (better then 90% of players)
      { "value": 92.5, "alpha": 100 },   // 75.5 - 92.5 - very good     (better then 99% of players)
      { "value": 999,  "alpha": 100 }    // 92.5 - XX   - skillful      (better then 99.9% of players)
    ],
    // Dynamic transparency by efficiency.
    // Динамическая прозрачность по эффективности.
    "eff": [
      { "value": 610,  "alpha": 100 },   // bad
      { "value": 875,  "alpha": 100 },   // below average
      { "value": 1175, "alpha": 100 },   // normal
      { "value": 1540, "alpha": 100 },   // good
      { "value": 1880, "alpha": 100 },   // very good
      { "value": 9999, "alpha": 100 }    // skillful
    ],
    // Dynamic transparency by WN6 rating.
    // Динамическая прозрачность по рейтингу WN6.
    "wn6": [
      { "value": 470,  "alpha": 100 },   // bad
      { "value": 860,  "alpha": 100 },   // below average
      { "value": 1225, "alpha": 100 },   // normal
      { "value": 1635, "alpha": 100 },   // good
      { "value": 1990, "alpha": 100 },   // very good
      { "value": 9999, "alpha": 100 }    // skillful
    ],
    // Dynamic transparency by WN8 rating.
    // Динамическая прозрачность по рейтингу WN8.
    "wn8": [
      { "value": 400,  "alpha": 100 },   // bad
      { "value": 900,  "alpha": 100 },   // below average
      { "value": 1470, "alpha": 100 },   // normal
      { "value": 2180, "alpha": 100 },   // good
      { "value": 2880, "alpha": 100 },   // very good
      { "value": 9999, "alpha": 100 }    // skillful
    ],
    // Dynamic transparency by WG rating
    // Динамическая прозрачность по рейтингу WG
    "wgr": [
      { "value": 2555,  "alpha": 100 },  // bad
      { "value": 4435,  "alpha": 100 },  // below average
      { "value": 6515,  "alpha": 100 },  // normal
      { "value": 8730,  "alpha": 100 },  // good
      { "value": 10175, "alpha": 100 },  // very good
      { "value": 99999, "alpha": 100 }   // skillful
    ],
    // Dynamic transparency by win percent.
    // Динамическая прозрачность по проценту побед.
    "winrate": [
      { "value": 46.5, "alpha": 100 },   // bad
      { "value": 48.5, "alpha": 100 },   // below average
      { "value": 52.5, "alpha": 100 },   // normal
      { "value": 57.5, "alpha": 100 },   // good
      { "value": 64.5, "alpha": 100 },   // very good
      { "value": 101,  "alpha": 100 }    // skillful
    ],
    // Dynamic transparency by kilo-battles.
    // Динамическая прозрачность по количеству кило-боев.
    "kb": [
      { "value": 1.5,  "alpha": 100 },   //    0 - 1.5
      { "value": 4.5,  "alpha": 100 },   //  1.5 - 4.5
      { "value": 8.5,  "alpha": 100 },   //  4.5 - 8.5
      { "value": 13.5, "alpha": 100 },	 //  8.5 - 13.5
      { "value": 19.5, "alpha": 100 },	 // 13.5 - 19.5
      { "value": 999,  "alpha": 100 }	   // 19.5 - *
    ],
    // Dynamic transparency by average level of player tanks.
    // Динамическая прозрачность по среднему уровню танков игрока.
    "avglvl": [
      { "value": 2,  "alpha": 100 },
      { "value": 3,  "alpha": 100 },
      { "value": 5,  "alpha": 100 },
      { "value": 7,  "alpha": 100 },
      { "value": 9,  "alpha": 100 },
      { "value": 11, "alpha": 100 }
    ],
    // Dynamic transparency by battles on current tank.
    // Динамическая прозрачность по количеству боев на текущем танке.
    "t_battles": [
      { "value": 50, "alpha": 0 },
      { "value": 99999, "alpha": 100 }
    ],
    // Dynamic transparency by average damage on current tank.
    // Динамическая прозрачность по среднему урону за бой на текущем танке.
    "tdb": [
      { "value": 500,  "alpha": 100 },
      { "value": 750,  "alpha": 100 },
      { "value": 1000, "alpha": 100 },
      { "value": 1800, "alpha": 100 },
      { "value": 2500, "alpha": 100 },
      { "value": 9999, "alpha": 100 }
    ],
    // Dynamic transparency by average damage efficiency on current tank.
    // Динамическая прозрачность по эффективности урона за бой на текущем танке.
    "tdv": [
      { "value": 0.6, "alpha": 100 },
      { "value": 0.8, "alpha": 100 },
      { "value": 1.0, "alpha": 100 },
      { "value": 1.3, "alpha": 100 },
      { "value": 2.0, "alpha": 100 },
      { "value": 15,  "alpha": 100 }
    ],
    // Dynamic transparency by average frags per battle on current tank.
    // Динамическая прозрачность по среднему количеству фрагов за бой на текущем танке.
    "tfb": [
      { "value": 0.6, "alpha": 100 },
      { "value": 0.8, "alpha": 100 },
      { "value": 1.0, "alpha": 100 },
      { "value": 1.3, "alpha": 100 },
      { "value": 2.0, "alpha": 100 },
      { "value": 15,  "alpha": 100 }
    ],
    // Dynamic transparency by number of spotted enemies per battle on current tank.
    // Динамическая прозрачность по среднему количеству засвеченных врагов за бой на текущем танке.
    "tsb": [
      { "value": 0.6, "alpha": 100 },
      { "value": 0.8, "alpha": 100 },
      { "value": 1.0, "alpha": 100 },
      { "value": 1.3, "alpha": 100 },
      { "value": 2.0, "alpha": 100 },
      { "value": 15,  "alpha": 100 }
    ]
  }
}