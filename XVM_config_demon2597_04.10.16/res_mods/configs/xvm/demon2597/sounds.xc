/**
 * Extra sounds settings.
 * Настройки дополнительных звуков.
 * http://www.koreanrandom.com/forum/topic/18955-
 */
{
  "sounds": {
    "enabled": false,
    // List of extra banks to load from folder res_mods/X.Y.Z/audioww.
    // Use semicolon for multiple values: "bank1.bnk; bank2.bnk;..."
    // Список дополнительных банков для загрузки из папки res_mods/X.Y.Z/audioww.
    // Несколько банков необходимо указывать через точку с запятой: "bank1.bnk; bank2.bnk;..."
    "soundBanks": {
      "hangar": "xvm.bnk;",
      "battle": "xvm.bnk;"
    },
    // Enable sound events logging in the xvm.log
    // Включить логгирование звуковых событий в xvm.log
    "logSoundEvents": false,
    // Sound events remapping
    // Переопределение звуковых событий
    "soundMapping": {
      // Event mapping
      // Переопределение события
      //"originalEventName": "newEventName"
      // To disable sound event use empty string for value
      // Для отключения звукового события используйте пустую строку для значения
      //"originalEventName": ""
      //
      // Original sound events
      // Оригинальные звуковые события
      //
      // SixthSense skill
      // Перк Шестое чувство
      "lightbulb": "",
      // Enemy detection
      // Обнаружение противника
      //"enemy_sighted_for_team": "",
      // Notifications about the imminent end of the battle
      // Оповещения о скором завершении боя
      "time_buzzer_01": "",
      "time_buzzer_02": "",
      // Ally killed by enemy
      // Союзник убит противником
      //"expl_ally_NPC": "",
      // Somebody else's vehicle critical damages bells
      // Звонки критических повреждений чужого танка
      // AP / ББ
      "imp_auto_critical_AP_PC_NPC": "imp_auto_pierce_AP_PC_NPC",
      "imp_main_critical_AP_PC_NPC": "imp_main_pierce_AP_PC_NPC",
      "imp_small_critical_AP_PC_NPC": "imp_small_pierce_AP_PC_NPC",
      "imp_medium_critical_AP_PC_NPC": "imp_medium_pierce_AP_PC_NPC",
      "imp_large_critical_AP_PC_NPC": "imp_large_pierce_AP_PC_NPC",
      "imp_huge_critical_AP_PC_NPC": "imp_huge_pierce_AP_PC_NPC",
      // APCR / ПК
      "imp_auto_critical_APCR_PC_NPC": "imp_auto_pierce_APCR_PC_NPC",
      "imp_main_critical_APCR_PC_NPC": "imp_main_pierce_APCR_PC_NPC",
      "imp_small_critical_APCR_PC_NPC": "imp_small_pierce_APCR_PC_NPC",
      "imp_medium_critical_APCR_PC_NPC": "imp_medium_pierce_APCR_PC_NPC",
      "imp_large_critical_APCR_PC_NPC": "imp_large_pierce_APCR_PC_NPC",
      "imp_huge_critical_APCR_PC_NPC": "imp_huge_pierce_APCR_PC_NPC",
      // HC / КС
      "imp_auto_critical_HC_PC_NPC": "imp_auto_pierce_HC_PC_NPC",
      "imp_main_critical_HC_PC_NPC": "imp_main_pierce_HC_PC_NPC",
      "imp_small_critical_HC_PC_NPC": "imp_small_pierce_HC_PC_NPC",
      "imp_medium_critical_HC_PC_NPC": "imp_medium_pierce_HC_PC_NPC",
      "imp_large_critical_HC_PC_NPC": "imp_large_pierce_HC_PC_NPC",
      "imp_huge_critical_HC_PC_NPC": "imp_huge_pierce_HC_PC_NPC",
      // HE / ОФ
      "imp_auto_critical_HE_PC_NPC": "imp_auto_pierce_HE_PC_NPC",
      "imp_main_critical_HE_PC_NPC": "imp_main_pierce_HE_PC_NPC",
      "imp_small_critical_HE_PC_NPC": "imp_small_pierce_HE_PC_NPC",
      "imp_medium_critical_HE_PC_NPC": "imp_medium_pierce_HE_PC_NPC",
      "imp_large_critical_HE_PC_NPC": "imp_large_pierce_HE_PC_NPC",
      "imp_huge_critical_HE_PC_NPC": "imp_huge_pierce_HE_PC_NPC",      
      // Own vehicle critical damages bells
      // Звонки критических повреждений своего танка
      // AP / ББ
      "imp_auto_critical_AP_NPC_PC": "imp_auto_pierce_AP_NPC_PC",
      "imp_main_critical_AP_NPC_PC": "imp_main_pierce_AP_NPC_PC",
      "imp_small_critical_AP_NPC_PC": "imp_small_pierce_AP_NPC_PC",
      "imp_medium_critical_AP_NPC_PC": "imp_medium_pierce_AP_NPC_PC",
      "imp_large_critical_AP_NPC_PC": "imp_large_pierce_AP_NPC_PC",
      "imp_huge_critical_AP_NPC_PC": "imp_huge_pierce_AP_NPC_PC",
      // APCR / ПК
      "imp_auto_critical_APCR_NPC_PC": "imp_auto_pierce_APCR_NPC_PC",
      "imp_main_critical_APCR_NPC_PC": "imp_main_pierce_APCR_NPC_PC",
      "imp_small_critical_APCR_NPC_PC": "imp_small_pierce_APCR_NPC_PC",
      "imp_medium_critical_APCR_NPC_PC": "imp_medium_pierce_APCR_NPC_PC",
      "imp_large_critical_APCR_NPC_PC": "imp_large_pierce_APCR_NPC_PC",
      "imp_huge_critical_APCR_NPC_PC": "imp_huge_pierce_APCR_NPC_PC",
      // HC / КС
      "imp_auto_critical_HC_NPC_PC": "imp_auto_pierce_HC_NPC_PC",
      "imp_main_critical_HC_NPC_PC": "imp_main_pierce_HC_NPC_PC",
      "imp_small_critical_HC_NPC_PC": "imp_small_pierce_HC_NPC_PC",
      "imp_medium_critical_HC_NPC_PC": "imp_medium_pierce_HC_NPC_PC",
      "imp_large_critical_HC_NPC_PC": "imp_large_pierce_HC_NPC_PC",
      "imp_huge_critical_HC_NPC_PC": "imp_huge_pierce_HC_NPC_PC",
      // HE / ОФ
      "imp_auto_critical_HE_NPC_PC": "imp_auto_pierce_HE_NPC_PC",
      "imp_main_critical_HE_NPC_PC": "imp_main_pierce_HE_NPC_PC",
      "imp_small_critical_HE_NPC_PC": "imp_small_pierce_HE_NPC_PC",
      "imp_medium_critical_HE_NPC_PC": "imp_medium_pierce_HE_NPC_PC",
      "imp_large_critical_HE_NPC_PC": "imp_large_pierce_HE_NPC_PC",
      "imp_huge_critical_HE_NPC_PC": "imp_huge_pierce_HE_NPC_PC",
      // Somebody else's vehicle critical damages bells (the observer mode)
      // Звонки критических повреждений чужого танка (в режиме наблюдателя)
      // AP / ББ
      "imp_auto_critical_AP_NPC_NPC": "imp_auto_pierce_AP_NPC_NPC",
      "imp_main_critical_AP_NPC_NPC": "imp_main_pierce_AP_NPC_NPC",
      "imp_small_critical_AP_NPC_NPC": "imp_small_pierce_AP_NPC_NPC",
      "imp_medium_critical_AP_NPC_NPC": "imp_medium_pierce_AP_NPC_NPC",
      "imp_large_critical_AP_NPC_NPC": "imp_large_pierce_AP_NPC_NPC",
      "imp_huge_critical_AP_NPC_NPC": "imp_huge_pierce_AP_NPC_NPC",
      // APCR / ПК 
      "imp_auto_critical_APCR_NPC_NPC": "imp_auto_pierce_APCR_NPC_NPC",
      "imp_main_critical_APCR_NPC_NPC": "imp_main_pierce_APCR_NPC_NPC",
      "imp_small_critical_APCR_NPC_NPC": "imp_small_pierce_APCR_NPC_NPC",
      "imp_medium_critical_APCR_NPC_NPC": "imp_medium_pierce_APCR_NPC_NPC",
      "imp_large_critical_APCR_NPC_NPC": "imp_large_pierce_APCR_NPC_NPC",
      "imp_huge_critical_APCR_NPC_NPC": "imp_huge_pierce_APCR_NPC_NPC",
      // HC / КС
      "imp_auto_critical_HC_NPC_NPC": "imp_auto_pierce_HC_NPC_NPC",
      "imp_main_critical_HC_NPC_NPC": "imp_main_pierce_HC_NPC_NPC",
      "imp_small_critical_HC_NPC_NPC": "imp_small_pierce_HC_NPC_NPC",
      "imp_medium_critical_HC_NPC_NPC": "imp_medium_pierce_HC_NPC_NPC",
      "imp_large_critical_HC_NPC_NPC": "imp_large_pierce_HC_NPC_NPC",
      "imp_huge_critical_HC_NPC_NPC": "imp_huge_pierce_HC_NPC_NPC",
      // HE / ОФ
      "imp_auto_critical_HE_NPC_NPC": "imp_auto_pierce_HE_NPC_NPC",
      "imp_main_critical_HE_NPC_NPC": "imp_main_pierce_HE_NPC_NPC",
      "imp_small_critical_HE_NPC_NPC": "imp_small_pierce_HE_NPC_NPC",
      "imp_medium_critical_HE_NPC_NPC": "imp_medium_pierce_HE_NPC_NPC",
      "imp_large_critical_HE_NPC_NPC": "imp_large_pierce_HE_NPC_NPC",
      "imp_huge_critical_HE_NPC_NPC": "imp_huge_pierce_HE_NPC_NPC",
      //
      // Sound events added by XVM
      // Звуковые события, добавленные в XVM
      //
      // Sixth sense perk
      // Перк Шестое чувство
      "xvm_sixthSense": "xvm_sixthSense",
      // Sixth sense perk for Т-34-85 Rudy
      // Перк Шестое чувство для Т-34-85 Rudy
      "xvm_sixthSenseRudy": "xvm_sixthSenseRudy",
      // Enemy detection
      // Обнаружение противника
      "xvm_enemySighted": "",
      // Fire alert
      // Пожар
      "xvm_fireAlert": "xvm_fireAlert",
      // Ammo bay damage
      // Повреждение боеукладки
      "xvm_ammoBay": "xvm_ammoBay",
      // Notifications about the imminent end of the battle (Use with original event disabling)
      // Оповещения о скором завершении боя (Используйте вместе с отключением оригинального звука)
      "xvm_battleEnd_5_min": "",
      "xvm_battleEnd_3_min": "xvm_battleEnd_3_min",
      "xvm_battleEnd_2_min": "xvm_battleEnd_2_min",
      "xvm_battleEnd_1_min": "xvm_battleEnd_1_min",
      "xvm_battleEnd_30_sec": "xvm_battleEnd_30_sec",
      "xvm_battleEnd_5_sec": "xvm_battleEnd_5_sec"
    }
  }
}
