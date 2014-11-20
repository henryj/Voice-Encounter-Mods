if GetLocale() ~= "zhTW" then return end

VEM_CORE_NEED_SUPPORT				= "你是否擁有良好的程式開發或語言能力? 如果是的話, VEM團隊真的需要你的幫助以保持成為WOW裡最佳的首領模組。觀看 http://bbs.ngacn.cc/read.php?tid=5397726&page=1 或 https://github.com/henryj/Voice-Encounter-Mods 來加入團隊。"
VEM_HOW_TO_USE_MOD					= "歡迎使用黑手之鄉VEM-語音版。在聊天頻道輸入 /vem 打開設定開始設定。你可以載入特定區域後為任何首領設定你喜歡的特別設置。VEM會在第一次啟動時嘗試掃描你的職業天賦，但有些選項你可能想打開。"

VEM_FORUMS_MESSAGE					= "發現BUG或錯誤? 希望有新的警告，計時器或是特別功能? \n |HVEM:論壇|h|cff3588ffhttp://bbs.ngacn.cc/read.php?tid=5397726&page=1|r (你可以點擊複製網址)"
VEM_FORUMS_COPY_URL_DIALOG			= "拜訪我們的討論與支援論壇\r"

VEM_CORE_LOAD_MOD_ERROR				= "載入%s模組時發生錯誤：%s"
VEM_CORE_LOAD_MOD_SUCCESS			= "成功載入%s模組。輸入/vem或/vem help有更多選項。"
VEM_CORE_LOAD_MOD_COMBAT			= "延遲載入'%s'直到離開戰鬥"
VEM_CORE_LOAD_GUI_ERROR				= "無法載入圖形介面：%s"
VEM_CORE_LOAD_GUI_COMBAT			= "圖形介面不能在戰鬥中初始化。圖形介面將在脫離戰鬥後自動讀取，這樣就能夠再次在戰鬥中使用。"
VEM_CORE_LOAD_SKIN_COMBAT			= "VEM計時條在戰鬥中套用外觀失敗。你的計時條可能不能正常作用而可能會導致錯誤。這常發生在使用第三方插件試著在戰鬥中套用外觀。建議在脫離戰鬥後reloadui。"
VEM_CORE_BAD_LOAD					= "VEM偵測到你的此副本的模組在戰鬥中讀取失敗。一旦脫離戰鬥，請立即輸入/consoel reloadui重新載入。"

VEM_CORE_BLIZZ_BUGS					= "6.0中的暴雪插件BUG：\n1. 如果你開啟音效設定，你可能會在戰鬥中失去插件的音效，因為Patch 6.0降低插件的聲音優先權而且遊戲同時放出的音效數量超過你最大聲音頻道的值。\n2. 插件使用獨立角色記錄，可能會導致使用特殊字元的角色無法讀取或紀錄插件設定。"

VEM_CORE_DYNAMIC_DIFFICULTY_CLUMP	= "VEM已中禁用動態距離框架，你目前的團隊人數在這場戰鬥中的機制資訊不足。"
VEM_CORE_DYNAMIC_ADD_COUNT			= "VEM已中禁用小怪計數警告，你目前的團隊人數在這場戰鬥中的機制資訊不足。"
VEM_CORE_DYNAMIC_MULTIPLE			= "VEM已中禁用多項功能，你目前的團隊人數在這場戰鬥中的機制資訊不足。"

VEM_CORE_LOOT_SPEC_REMINDER			= "你目前的專精為:%s。而你目前的拾取選擇為:%s。"

VEM_CORE_BIGWIGS_ICON_CONFLICT		= "VEM偵測到你同時開啟BigWigs和VEM的團隊圖示。請關閉其中之一的團隊圖示功能以免與你的隊伍隊長產生衝突。"

VEM_CORE_PROVINGGROUNDS_AD			= "試煉之地的VEM插件已經可供使用。你可以在deadlybossmods.com或Curse找到。此訊息只會顯示一次。"

VEM_CORE_COMBAT_STARTED				= "%s開戰。祝好運與盡興! :)"
VEM_CORE_COMBAT_STARTED_IN_PROGRESS	= "與%s開戰已進行的戰鬥。祝好運與盡興! :)"
VEM_CORE_GUILD_COMBAT_STARTED		= "公會已跟%s開戰"
VEM_CORE_SCENARIO_STARTED			= "%s開始。祝好運與盡興! :)"
VEM_CORE_SCENARIO_STARTED_IN_PROGRESS	= "加入進行中的%s。祝好運與盡興! :)"
VEM_CORE_BOSS_DOWN					= "擊敗%s，用了%s!"
VEM_CORE_BOSS_DOWN_I				= "擊敗%s!你已勝利了%d次。"
VEM_CORE_BOSS_DOWN_L				= "擊敗%s!本次用了%s，上次用了%s，最快紀錄為%s。你總共戰勝了%d次。"
VEM_CORE_BOSS_DOWN_NR				= "擊敗%s!用了%s! 這是一個新記錄! (舊紀錄為%s) 你總共戰勝了%d次。"
VEM_CORE_GUILD_BOSS_DOWN			= "公會已擊敗%s，用了%s!"
VEM_CORE_SCENARIO_COMPLETE			= "%s完成!用了%s!"
VEM_CORE_SCENARIO_COMPLETE_I		= "%s完成! 你總共完成了%d次。"
VEM_CORE_SCENARIO_COMPLETE_L		= "%s完成!本次用了%s，上次用了%s，最快紀錄為%s。你總共完成了%d次。"
VEM_CORE_SCENARIO_COMPLETE_NR		= "%s完成!用了%s! 這是一個新記錄! (舊紀錄為%s) 你總共完成了%d次。"
VEM_CORE_COMBAT_ENDED_AT			= "%s(%s)的戰鬥經過%s結束。"
VEM_CORE_COMBAT_ENDED_AT_LONG		= "%s(%s)的戰鬥經過%s結束。你在這個難度總共滅團了%d次。"
VEM_CORE_GUILD_COMBAT_ENDED_AT		= "公會在%s (%s)的戰鬥滅團，經過%s."
VEM_CORE_SCENARIO_ENDED_AT			= "%s結束!用了%s!"
VEM_CORE_SCENARIO_ENDED_AT_LONG		= "%s結束!本次用了%s，你已有共%d次未完成的嘗試在這個難度裡。"
VEM_CORE_COMBAT_STATE_RECOVERED		= "%s的戰鬥在%s前開始，恢復計時器中..."
VEM_CORE_TRANSCRIPTOR_LOG_START		= "Transcriptor開始記錄。"
VEM_CORE_TRANSCRIPTOR_LOG_END		= "Transcriptor結束紀錄。"

VEM_CORE_WORLDBOSS_ENGAGED			= "在你的伺服器上的%s可能已在%s時開戰(%s發送)。"
VEM_CORE_WORLDBOSS_DEFEATED			= "在你的伺服器上的%s可能已被擊敗(%s發送)。"

VEM_CORE_TIMER_FORMAT_SECS			= "%d秒"
VEM_CORE_TIMER_FORMAT_MINS			= "%d分鐘"
VEM_CORE_TIMER_FORMAT				= "%d分%d秒"

VEM_CORE_MIN						= "分"
VEM_CORE_MIN_FMT					= "%d分"
VEM_CORE_SEC						= "秒"
VEM_CORE_SEC_FMT					= "%d秒"

VEM_CORE_GENERIC_WARNING_OTHERS		= "與一個其他"
VEM_CORE_GENERIC_WARNING_OTHERS2	= "與其他%d"
VEM_CORE_GENERIC_WARNING_BERSERK	= "%s%s後狂暴"
VEM_CORE_GENERIC_TIMER_BERSERK		= "狂暴"
VEM_CORE_OPTION_TIMER_BERSERK		= "為$spell:26662顯示計時器"
VEM_CORE_GENERIC_TIMER_COMBAT		= "戰鬥開始"
VEM_CORE_OPTION_TIMER_COMBAT		= "為戰鬥開始顯示計時器"
VEM_CORE_OPTION_HEALTH_FRAME		= "顯示首領血量框架"

VEM_CORE_OPTION_CATEGORY_TIMERS		= "計時器"
VEM_CORE_OPTION_CATEGORY_WARNINGS		= "警告"
VEM_CORE_OPTION_CATEGORY_SPECWARNINGS	= "特別警告"
VEM_CORE_OPTION_CATEGORY_SOUND			= "語音版額外選項"
VEM_CORE_OPTION_CATEGORY_MISC			= "其它"

VEM_CORE_AUTO_RESPONDED						= "已自動回覆密語。"
VEM_CORE_STATUS_WHISPER						= "%s：%s，%d/%d存活。"
--Bosses
VEM_CORE_AUTO_RESPOND_WHISPER				= "%s正在與%s交戰（當前%s，%d/%d存活）"
VEM_CORE_WHISPER_COMBAT_END_KILL			= "%s已經擊敗%s!"
VEM_CORE_WHISPER_COMBAT_END_KILL_STATS		= "%s已經擊敗%s! 他們總共已擊殺了%d次。"
VEM_CORE_WHISPER_COMBAT_END_WIPE_AT			= "%s在%s還有%s時滅團了。"
VEM_CORE_WHISPER_COMBAT_END_WIPE_STATS_AT	= "%s在%s還有%s時滅團了。他們在這個難度總共滅團了%d次。"
--Scenarios (no percents. words like "fighting" or "wipe" changed to better fit scenarios)
VEM_CORE_AUTO_RESPOND_WHISPER_SCENARIO		= "%s忙碌於%s(%d/%d存活)"
VEM_CORE_WHISPER_SCENARIO_END_KILL			= "%s已經完成%s!"
VEM_CORE_WHISPER_SCENARIO_END_KILL_STATS	= "%s已經完成%s!他們總共有%d次勝利。"
VEM_CORE_WHISPER_SCENARIO_END_WIPE			= "%s未完成%s。"
VEM_CORE_WHISPER_SCENARIO_END_WIPE_STATS	= "%s未完成%s。他們在這個難度總共未完成%d次。"

VEM_CORE_VERSIONCHECK_HEADER		= "Voice Encounter Mods - 版本檢測"
VEM_CORE_VERSIONCHECK_ENTRY			= "%s：%s(r%d)"
VEM_CORE_VERSIONCHECK_ENTRY_TWO		= "%s：%s (r%d) & %s (r%d)"
VEM_CORE_VERSIONCHECK_ENTRY_NO_VEM	= "%s：尚未安裝任何團隊首領模組"
VEM_CORE_VERSIONCHECK_FOOTER			= "團隊中有%d玩家正在使用VEM或DBM / %d玩家正在使用Bigwigs"
VEM_CORE_YOUR_VERSION_OUTDATED			= "你的 Voice Encounter Mods 已經過期。請到 https://github.com/henryj/Voice-Encounter-Mods 下載最新版本。"
--VEM_BIG_WIGS (Same as English locales)
--VEM_BIG_WIGS_ALPHA (Same as English locales)

VEM_CORE_UPDATEREMINDER_HEADER			= "你的Voice Encounter Mod已經過期。\n你可以在此網址下載到新版本%s(r%d)："
VEM_CORE_UPDATEREMINDER_HEADER_ALPHA	= "你的alpha版本Voice Encounter Mods已經過期。\n 你至少落後%d個測試版本。建議VEM使用者使用最新的alpha或最新的穩定版本。過期的alpha版本可能會有效能低落或未完成的功能。"
VEM_CORE_UPDATEREMINDER_FOOTER			= "按下" .. (IsMacClient() and "Cmd-C" or "Ctrl-C")  ..  "：複製下載網址到剪貼簿。"
VEM_CORE_UPDATEREMINDER_FOOTER_GENERIC	= "按下" .. (IsMacClient() and "Cmd-C" or "Ctrl-C")  ..  "：複製網址到剪貼簿。"
VEM_CORE_UPDATEREMINDER_NOTAGAIN		= "當有新版本時顯示彈出提示"
VEM_CORE_UPDATEREMINDER_DISABLE			= "警告: 你的VEM版本已大幅度的過期(%d修訂版)，已被禁用了除非更新至最新版本。這是為了確保舊而不相容的程式碼不會對你而團隊夥伴造成低落的遊戲體驗。"
VEM_CORE_UPDATEREMINDER_HOTFIX			= "你的VEM版本會在這首領戰鬥有不準確的計時器或警告。這問題已被修正在新版正式版(或是更新到最新的alpha如果新版正式版還未釋出。)"
VEM_CORE_UPDATEREMINDER_MAJORPATCH		= "警告:你的VEM已經過期，VEM已被禁用直到你更新至最新版，因為遊戲大改版。為了不讓舊的程式碼拖累遊戲體驗。請至deadlybossmods.com或是curse下載最新版本的VEM。如果你在6.0 beta看到此訊息，請到http://forums.elitistjerks.com/topic/132677-deadly-boss-mods-60-testing下載6.0 beta插件"
VEM_CORE_UPDATEREMINDER_TESTVERSION		= "警告:你使用的VEM版本和遊戲版本不相容。請到deadlybossmods.com或是curse下載符合你遊戲版本的VEM。"
VEM_CORE_DBM							= "警告:你同時使用VEM和DBM。VEM將停用而無法執行。"

VEM_CORE_MOVABLE_BAR				= "拖動我!"

VEM_PIZZA_SYNC_INFO					= "|Hplayer:%1$s|h[%1$s]|h向你發送了一個倒數計時：'%2$s'\n|HVEM:cancel:%2$s:nil|h|cff3588ff[取消該計時]|r|h  |HVEM:ignore:%2$s:%1$s|h|cff3588ff[忽略來自%1$s的計時]|r|h"
VEM_PIZZA_CONFIRM_IGNORE			= "是否要在該次遊戲連結中忽略來自%s的計時？"
VEM_PIZZA_ERROR_USAGE				= "命令：/vem [broadcast] timer <時間（秒）> <文字>。<時間>必須大於1"

--VEM_CORE_MINIMAP_TOOLTIP_HEADER (Same as English locales)
VEM_CORE_MINIMAP_TOOLTIP_FOOTER		= "Shift+左鍵或右鍵點擊即可移動，Alt+Shift+點擊即可拖放"

VEM_CORE_RANGECHECK_HEADER			= "距離監視（%d碼）"
VEM_CORE_RANGECHECK_SETRANGE		= "設置距離"
VEM_CORE_RANGECHECK_SOUNDS			= "音效"
VEM_CORE_RANGECHECK_SOUND_OPTION_1	= "當一位玩家在範圍內時播放音效"
VEM_CORE_RANGECHECK_SOUND_OPTION_2	= "當多於一位玩家在範圍內時播放音效"
VEM_CORE_RANGECHECK_SOUND_0			= "沒有音效"
VEM_CORE_RANGECHECK_SOUND_1			= "預設音效"
VEM_CORE_RANGECHECK_SOUND_2			= "蜂鳴聲"
VEM_CORE_RANGECHECK_SETRANGE_TO		= "%d碼"
VEM_CORE_RANGECHECK_OPTION_FRAMES	= "框架"
VEM_CORE_RANGECHECK_OPTION_RADAR	= "顯示雷達框架"
VEM_CORE_RANGECHECK_OPTION_TEXT		= "顯示文字框"
VEM_CORE_RANGECHECK_OPTION_BOTH		= "兩者都顯示"
VEM_CORE_RANGERADAR_HEADER			= "距離雷達(%d碼)"
VEM_CORE_RANGERADAR_IN_RANGE_TEXT	= "%d玩家在範圍內"

VEM_CORE_INFOFRAME_SHOW_SELF		= "總是顯示你的能量"

VEM_LFG_INVITE						= "地城準備確認"

VEM_CORE_SLASHCMD_HELP				= {
	"可用命令：",
	"/vem version：進行團隊範圍內的版本檢測（也可使用：ver）。",
--	"/vem version2: 進行團隊範圍內的版本檢測及密語通知已過期的成員（也可使用: ver2）。",
	"/vem unlock：顯示一個可移動的計時器（也可使用：move）。",
	"/vem timer/ctimer/ltimer/cltimer <x> <文字>：開始一個以<文字>為名稱的時間為<x>秒的計時器。查看http://tinyurl.com/kwsfl5933取得各種計時器說明",
	"/vem broadcast timer <x> <文字>：向團隊廣播一個以<文字>為名稱，時間為<x>秒的計時器（需要團隊隊長或助理權限）。",
	"/vem timer endloop：停止任何無限循環的計時器。",
	"/vem break <分鐘>: 開始休息計時器<分鐘>。向所有團隊成員發送一個VEM休息計時器（需要團隊隊長或助理權限）。",
	"/vem pull <秒數>: 開始備戰計時器<秒數>。向所有團隊成員發送一個VEM備戰計時器（需要團隊隊長或助理權限）。",
	"/vem arrow: 顯示VEM箭頭, 輸入 /vem arrow help 獲得更多訊息。",
	"/vem lockout: 向團隊成員請求他們當前的團隊副本鎖定訊息(鎖定訊息、副本id) (需要團隊隊長或助理權限)。",
	"/vem lag: 進行團隊範圍內的網路延遲檢測。",
	"/vem help：顯示可用命令的說明。"
}

VEM_ERROR_NO_PERMISSION				= "無權進行此操作。"

VEM_CORE_BOSSHEALTH_HIDE_FRAME		= "關閉血量框架"

VEM_CORE_UNKNOWN					= "未知"
VEM_CORE_LEFT						= "左"
VEM_CORE_RIGHT						= "右"
VEM_CORE_BACK						= "後"
VEM_CORE_FRONT						= "前"

VEM_CORE_SETTO						= "設置為："
VEM_CORE_SETWISP					= "的觀察目標設置為你，請協助檢查是否正確。"
VEM_CORE_WRONGSET					= "|cFFFF0000你輸入了錯誤的內容："

VEM_CORE_BREAK_START				= "現在開始休息-你有%s分鐘!"
VEM_CORE_BREAK_MIN					= "%s分鐘後休息時間結束!"
VEM_CORE_BREAK_SEC					= "%s秒後休息時間結束!"
VEM_CORE_TIMER_BREAK				= "休息時間!"
VEM_CORE_ANNOUNCE_BREAK_OVER		= "休息時間已經結束"

VEM_CORE_TIMER_PULL					= "戰鬥準備"
VEM_CORE_ANNOUNCE_PULL				= "%d秒後拉怪 (%s發起)"
VEM_CORE_ANNOUNCE_PULL_NOW			= "拉怪囉!"

VEM_CORE_ACHIEVEMENT_TIMER_SPEED_KILL = "成就"

VEM_CORE_AUTO_ANNOUNCE_TEXTS.target			= "%s:>%%s<"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.targetcount	= "%s (%%d):>%%s<"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.spell			= "%s"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.ends 			= "%s結束"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.endtarget		= "%s結束:>%%s<"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.fades			= "%s消退"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.adds			= "%s還剩下:%%d"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.cast			= "施放%s:%.1f秒"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.soon			= "%s即將到來"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.prewarn		= "%s在%s"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.phase			= "第%s階段"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.prephase		= "第%s階段即將到來"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.count			= "%s (%%d)"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.stack			= ">%%s<中了%s (%%d)"

VEM_CORE_AUTO_ANNOUNCE_OPTIONS.target		= "提示$spell:%s的目標"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.targetcount	= "提示$spell:%s的目標"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.spell		= "為$spell:%s顯示警告"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.ends			= "為$spell:%s結束顯示警告"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.endtarget	= "為$spell:%s結束顯示警告"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.fades		= "為$spell:%s消退顯示警告"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.adds			= "提示$spell:%s的剩餘數量"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.cast			= "當$spell:%s施放時顯示警告"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.soon			= "為$spell:%s顯示預先警告"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.prewarn		= "為$spell:%s顯示預先警告"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.phase		= "提示第%s階段"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.prephase		= "為第%s階段顯示預先警告"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.count		= "為$spell:%s顯示警告"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.stack		= "提示$spell:%s的堆疊"

VEM_CORE_AUTO_SPEC_WARN_TEXTS.spell			= "%s!"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.ends 			= "%s結束"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.fades			= "%s消退"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.soon			= "%s即將到來"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.prewarn		= "%s在%s"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.dispel		= ">%%s<中了%s - 現在驅散"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.interrupt		= "%s - 快中斷>%%s< !"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.you			= "你中了%s"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.target		= ">%%s<中了%s"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.taunt			= ">%%s<中了%s - 快嘲諷"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.close			= "你附近的>%%s<中了%s"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.move			= "%s - 快移動"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.moveaway		= "%s - 快離開其他人"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.moveto		= "%s - 快跑向>%%s<"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.run			= "%s - 快跑開"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.cast			= "%s - 停止施法"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.reflect		= "%s - 停止攻擊"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.count			= "%s!(%%d)"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.stack			= "你中了%%d層%s"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.switch		= ">%s< - 快更換目標!"

VEM_CORE_AUTO_SPEC_WARN_OPTIONS.spell		= "為$spell:%s顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.ends 		= "為$spell:%s結束顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.fades 		= "為$spell:%s消退顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.soon 		= "為$spell:%s顯示預先特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.prewarn 	= "在%d秒前為$spell:%s顯示預先特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.dispel		= "需對$spell:%s驅散/竊取時顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.interrupt	= "需對$spell:%s斷法時顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.you			= "當你中了$spell:%s時顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.target		= "當有人中了$spell:%s時顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.taunt 		= "當其他坦克中了$spell:%s顯示特別警告去嘲諷"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.close		= "當你附近有人中了$spell:%s時顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.move		= "當你中了$spell:%s時顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.moveaway	= "為$spell:%s要跑離開其他人時顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.moveto		= "當需要跑向中了$spell:%s的人時顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.run			= "為$spell:%s顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.cast		= "為$spell:%s施放時顯示停止施法的特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.reflect		= "為$spell:%s施放時顯示停止攻擊的特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.count 		= "為$spell:%s顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.stack		= "為中了>=%d層$spell:%s時顯示特別警告"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.switch		= "需對$spell:%s更換目標時顯示特別警告"

VEM_CORE_AUTO_TIMER_TEXTS.target			= "%s:>%%s<"
VEM_CORE_AUTO_TIMER_TEXTS.cast				= "%s"
VEM_CORE_AUTO_TIMER_TEXTS.active			= "%s結束"
VEM_CORE_AUTO_TIMER_TEXTS.fades				= "%s消退"
VEM_CORE_AUTO_TIMER_TEXTS.cd				= "%s冷卻"
VEM_CORE_AUTO_TIMER_TEXTS.cdcount			= "%s冷卻 (%%d)"
VEM_CORE_AUTO_TIMER_TEXTS.cdsource			= "%s冷卻:>%%s<"
VEM_CORE_AUTO_TIMER_TEXTS.next 				= "下一次%s"
VEM_CORE_AUTO_TIMER_TEXTS.nextcount 		= "下一次%s (%%d)"
VEM_CORE_AUTO_TIMER_TEXTS.nextsource		= "下一次%s:>%%s<"
VEM_CORE_AUTO_TIMER_TEXTS.achievement		= "%s"

VEM_CORE_AUTO_TIMER_OPTIONS.target			= "為$spell:%s顯示減益計時器"
VEM_CORE_AUTO_TIMER_OPTIONS.cast			= "為$spell:%s顯示施法計時器"
VEM_CORE_AUTO_TIMER_OPTIONS.active			= "為$spell:%s顯示持續時間計時器"
VEM_CORE_AUTO_TIMER_OPTIONS.fades			= "當$spell:%s將從玩家消退顯示計時器"
VEM_CORE_AUTO_TIMER_OPTIONS.cd				= "為$spell:%s顯示冷卻計時器"
VEM_CORE_AUTO_TIMER_OPTIONS.cdcount			= "為$spell:%s顯示冷卻計時器"
VEM_CORE_AUTO_TIMER_OPTIONS.cdsource		= "為$spell:%s顯示冷卻計時器"
VEM_CORE_AUTO_TIMER_OPTIONS.next			= "為下一次$spell:%s顯示計時器"
VEM_CORE_AUTO_TIMER_OPTIONS.nextcount		= "為下一次$spell:%s顯示計時器"
VEM_CORE_AUTO_TIMER_OPTIONS.nextsource		= "為下一次$spell:%s顯示計時器"
VEM_CORE_AUTO_TIMER_OPTIONS.achievement		= "為成就:%s顯示計時器"

VEM_CORE_AUTO_ICONS_OPTION_TEXT			= "為$spell:%s的目標設置標記"
VEM_CORE_AUTO_ICONS_OPTION_TEXT2		= "為$spell:%s設置標記"
VEM_CORE_AUTO_ARROW_OPTION_TEXT			= "為跑向中了$spell:%s的目標顯示VEM箭頭"
VEM_CORE_AUTO_ARROW_OPTION_TEXT2		= "為離開中了$spell:%s的目標顯示VEM箭頭"
VEM_CORE_AUTO_SOUND_OPTION_TEXT			= "當你中了$spell:%s時播放音效"
VEM_CORE_AUTO_COUNTDOWN_OPTION_TEXT		= "為$spell:%s的冷卻播放倒數計時音效"
VEM_CORE_AUTO_COUNTDOWN_OPTION_TEXT2	= "為$spell:%s的減益播放倒數計時音效"
VEM_CORE_AUTO_COUNTOUT_OPTION_TEXT		= "為$spell:%s的持續時間播放倒數計時音效"
VEM_CORE_AUTO_YELL_OPTION_TEXT			= "當你中了$spell:%s時大喊"
VEM_CORE_AUTO_YELL_ANNOUNCE_TEXT		= "" .. UnitName("player") .. "中了%s!"
VEM_CORE_AUTO_RANGE_OPTION_TEXT			= "為$spell:%2$s顯示距離框架(%1$s碼)"
VEM_CORE_AUTO_RANGE_OPTION_TEXT_SHORT	= "顯示距離框架(%s碼)"
VEM_CORE_AUTO_INFO_FRAME_OPTION_TEXT	= "為$spell:%s顯示訊息框架"
VEM_CORE_AUTO_READY_CHECK_OPTION_TEXT	= "當首領開打時撥放準備檢查的音效(即使沒有選定目標)"

-- New special warnings
VEM_CORE_MOVE_SPECIAL_WARNING_BAR	= "可拖動的特別警告"
VEM_CORE_MOVE_SPECIAL_WARNING_TEXT	= "特別警告"


VEM_CORE_RANGE_CHECK_ZONE_UNSUPPORTED	= "在此區域中不支援%d碼的距離檢查。\n已支援的距離有10，11，15及28碼。"

VEM_ARROW_MOVABLE					= "可移動箭頭"
VEM_ARROW_NO_RAIDGROUP				= "VEM箭頭僅可在副本中調試。"
VEM_ARROW_ERROR_USAGE	= {
	"VEM-Arrow 用法:",
	"/vem arrow <x> <y>  建立一個箭頭在特定的位置(使用世界地圖座標)",
	"/vem arrow map <x> <y>  建立一個箭頭在特定的位置 (使用小地圖座標)",
	"/vem arrow <玩家>  建立並箭頭指向你的隊伍或團隊中特定的玩家",
	"/vem arrow hide  隱藏箭頭",
	"/vem arrow move  可移動箭頭"
}

VEM_SPEED_KILL_TIMER_TEXT	= "勝利紀錄"
VEM_SPEED_KILL_TIMER_OPTION	= "顯示一個計時器來打敗你上次的最快勝利"
VEM_SPEED_CLEAR_TIMER_TEXT	= "最佳紀錄"
VEM_COMBAT_RES_TIMER_TEXT	= "下一個戰復充能"


VEM_REQ_INSTANCE_ID_PERMISSION		= "%s想要查看你的副本ID和進度鎖定情況。\n你想發送該訊息給%s嗎? 在你的當前進程（除非你下線）他可以一直查閱該訊息。"
VEM_ERROR_NO_RAID					= "你必須在一個團隊中才可以使用這個功能。"
VEM_INSTANCE_INFO_REQUESTED			= "查看團隊成員的副本鎖定訊息。\n請注意，隊員們將會被詢問是否願意發送資料給你，因此可能需要等待一段時間才能獲得全部的回覆。"
VEM_INSTANCE_INFO_STATUS_UPDATE		= "從%d個玩家獲得訊息，來自%d個VEM用戶：%d人發送了資料, %d人拒絕回傳資料。繼續為更多回覆等待%d秒..."
VEM_INSTANCE_INFO_ALL_RESPONSES		= "已獲得全部團隊成員的回傳資料"
VEM_INSTANCE_INFO_DETAIL_DEBUG		= "發送者:%s 結果類型:%s 副本名:%s 副本ID:%s 難度:%d 大小:%d 進度:%s"
VEM_INSTANCE_INFO_DETAIL_HEADER		= "%s(%d), 難度%d:"
VEM_INSTANCE_INFO_DETAIL_INSTANCE	= "    ID %s, 進度%d:%s"
VEM_INSTANCE_INFO_STATS_DENIED		= "拒絕回傳數據:%s"
VEM_INSTANCE_INFO_STATS_AWAY		= "離開:%s"
VEM_INSTANCE_INFO_STATS_NO_RESPONSE	= "沒有安裝最新版本的VEM:%s"
VEM_INSTANCE_INFO_RESULTS			= "副本ID掃描結果。注意如果團隊中有不同語言版本的魔獸客戶端，那麼同一副本可能會出現不止一次。"
VEM_INSTANCE_INFO_SHOW_RESULTS		= "仍未回覆的玩家: %s\n|HVEM:showRaidIdResults|h|cff3588ff[查看結果]|r|h"

VEM_CORE_LAG_CHECKING				= "檢測團隊成員的網路延遲中..."
VEM_CORE_LAG_HEADER					= "Voice Encounter Mods - 網路延遲結果"
VEM_CORE_LAG_ENTRY					= "%s:世界延遲[%d毫秒]/家延遲[%d毫秒]"
VEM_CORE_LAG_FOOTER					= "無回應:%s"


VEM_CORE_GUILDAD_HEADER_GENERIC		= "黑手之鄉簡介"
VEM_CORE_GUILDAD_GENERIC			= "        黑手之鄉成立于2007年10月17日，前身是國服三區雷斧堡壘的聯盟公會盟誓的二團。團長一直是阿爾貝裏希（在台服改名爲Aberich）。\n\n        2010年1月，黑手的骨幹十多名玩家一起轉戰台服pve服務器眾星之子，希望能在台服繼續我們的夢想。4.2國服同步後，由于團隊已經一部分本土化，團隊留在了台服並准備一直留下去。\n\n        公會現有25人團隊一支，從3.3至今所有版本25人H模式當前版本皆全通。5.1版本25人團排名臺服第八，並轉服至世界之樹，5.2版本和5.4版本25人團隊都拿到服務器首位刷屏。\n\n        公會活動時間：開荒期間周四五六 周一二三(也就是除了周日都有活動)，farm期間周五周六周一周二(或者更少)，晚上7:40開組，8:00開打，12:00左右結束。"
VEM_CORE_GUILDAD_FOOTER_GENERIC		= "|h|cff3588ff重點招募\n盜賊             法師             戰士\n具體要求加QQ談   聯系QQ:313082736 注明wow和自己的職業|r|h"

VEM_CORE_SOUND_NOFILE		 		= "未發現語音文件"
VEM_CORE_SOUND_NOFILEUSAGE		 	= "    VEM沒有發現已啟用的語音包，請檢查語音包是否正確並已啟用"
VEM_CORE_SOUND_UNNAME		 		= "自定義語音"
VEM_CORE_SOUND_UNUSAGE		 		= "    這是一份自定義的語音文件，但作者很懶，他沒有寫介紹。"