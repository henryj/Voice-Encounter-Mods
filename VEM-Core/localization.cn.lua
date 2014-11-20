-- VEM_Core
-- Diablohu(diablohudream@gmail.com)
-- yleaf(yaroot@gmail.com)
-- Mini_Dragon(projecteurs@gmail.com)
-- Last update: Oct 19, 2014@11805

if GetLocale() ~= "zhCN" then return end

VEM_CORE_NEED_SUPPORT				= "嘿, 你是否拥有良好的程序开发或语言能力? 如果是的话, VEM团队真心需要你的帮助以保持成为WOW里面最佳的首领报警插件。请访问 http://bbs.ngacn.cc/read.php?tid=5397726&page=1 或 https://github.com/henryj/Voice-Encounter-Mods 来加入我们的行列。"
VEM_HOW_TO_USE_MOD					= "欢迎使用VEM。在聊天框输入 /vem help 以获取可用命令的帮助。输入 /vem 可打开设置窗口。手动打开指定区域的模组即可开始针对各个模块进行设置，也可以浏览首领击杀记录。VEM 会在你首次尝试首领战时自动进行扫描，但是有些设置需要手动开启。"

VEM_FORUMS_MESSAGE					= "发现BUG或错误的计时器?你希望要让某些模组有新的警告，计时器或是特别功能?\n拜访新的Voice Encounter Mods讨论，臭虫回报与功能要求论坛 |HVEM:论坛|h|cff3588ffhttp://bbs.ngacn.cc/read.php?tid=5397726&page=1|r (你可以点击链接复制网址)"
VEM_FORUMS_COPY_URL_DIALOG			= "拜访我们的讨论与支持论坛\r"

VEM_CORE_LOAD_MOD_ERROR				= "读取%s模块时发生错误：%s"
VEM_CORE_LOAD_MOD_SUCCESS			= "成功读取%s模块。在聊天框输入 /vem 或 /vem help 可进行更多设置。"
VEM_CORE_LOAD_MOD_COMBAT			= "延迟读取模块 '%s' 直到你脱离战斗。"
VEM_CORE_LOAD_GUI_ERROR				= "无法读取图形界面：%s"
VEM_CORE_LOAD_GUI_COMBAT			= "VEM无法在战斗中初始化图形界面。请先在非战斗状态打开图形设置界面，之后的战斗中就可以自由打开和关闭该界面了。"
VEM_CORE_LOAD_SKIN_COMBAT			= "VEM无法在战斗中更换皮肤。请先在非战斗状态更换好皮肤，并重载界面。"
VEM_CORE_BAD_LOAD					= "VEM检测到由于你在战斗过程中载入模块，有些计时器可能会错误。请在离开战斗后马上重载界面。"

VEM_CORE_BLIZZ_BUGS					= "6.0中的暴雪的插件bug:\n1. 如果你开启音效，你的插件可能会在战斗时丢失声音，因为插件的优先权被下降了而声音通道有限。请在您的“主菜单-系统-声音”菜单中，将“声道”选项调为“中(32)”或“高(64)”。\n2. 插件为每个角色单独保存设置，如果名字中有特殊字符，可能会导致错误。"

VEM_CORE_DYNAMIC_DIFFICULTY_CLUMP	= "由于玩家数量不足，VEM 无法开启动态距离检测。"
VEM_CORE_DYNAMIC_ADD_COUNT			= "由于玩家数量不足，VEM 无法开启倒计时。"
VEM_CORE_DYNAMIC_MULTIPLE			= "由于玩家数量不足，VEM 禁用了多个功能。"

VEM_CORE_LOOT_SPEC_REMINDER			= "你当前的人物专精为 %s。你当前的拾取选择为 %s。"

VEM_CORE_BIGWIGS_ICON_CONFLICT		= "VEM检测到你同时开启了Bigwigs,请关闭自动标记以避免冲突。"

VEM_CORE_PROVINGGROUNDS_AD			= "6.0 版本的 VEM-ProvingGrounds （白虎寺挑战模块） 已经上线了. 旧的模块 VEM-ProvingGrounds-MoP 已经被禁用. 你可以删除旧版本并且在 deadlybossmods.com 或 Curse 上找到新版本。本消息只显示一次。"

VEM_CORE_COMBAT_STARTED				= "%s作战开始，祝你走运 :)"
VEM_CORE_COMBAT_STARTED_IN_PROGRESS	= "已进行的战斗-%s正在作战。祝你走运 :)"
VEM_CORE_GUILD_COMBAT_STARTED		= "工会版%s作战开始"
VEM_CORE_SCENARIO_STARTED			= "场景战役-%s作战开始。祝你走运 :)"
VEM_CORE_SCENARIO_STARTED_IN_PROGRESS	= "已进行的场景战役-%s正在作战。祝你走运 :)"
VEM_CORE_BOSS_DOWN					= "%s战斗胜利！用时%s！"
VEM_CORE_BOSS_DOWN_I				= "%s战斗胜利！总计%d次胜利。"
VEM_CORE_BOSS_DOWN_L				= "%s战斗胜利！用时%s！上次用时%s，最快用时%s。总计%d次胜利。"
VEM_CORE_BOSS_DOWN_NR				= "%s战斗胜利！用时%s！新的纪录诞生了！原纪录为%s。总计%d次胜利。"
VEM_CORE_GUILD_BOSS_DOWN			= "工会版%s战斗胜利！用时%s！"
VEM_CORE_SCENARIO_COMPLETE			= "场景战役-%s战斗胜利！用时%s!"
VEM_CORE_SCENARIO_COMPLETE_I		= "场景战役-%s战斗胜利！总计%d次胜利。"
VEM_CORE_SCENARIO_COMPLETE_L		= "场景战役-%s战斗胜利！用时%s！上次用时%s，最快用时%s。总计%d次胜利。"
VEM_CORE_SCENARIO_COMPLETE_NR		= "场景战役-%s战斗胜利！用时%s！新的纪录诞生了！原纪录为%s。总计%d次胜利。"
VEM_CORE_COMBAT_ENDED_AT			= "%s （%s）作战结束，用时%s。"
VEM_CORE_COMBAT_ENDED_AT_LONG		= "%s （%s）作战结束，用时%s。该难度下总计失败%d次。"
VEM_CORE_GUILD_COMBAT_ENDED_AT		= "工会版%s （%s）作战结束，用时%s。"
VEM_CORE_SCENARIO_ENDED_AT			= "场景战役-%s作战结束，用时%s。"
VEM_CORE_SCENARIO_ENDED_AT_LONG		= "场景战役-%s作战结束，用时%s。该难度下总计失败%d次。"
VEM_CORE_COMBAT_STATE_RECOVERED		= "%s作战%s前开始，正在恢复计时条……"
VEM_CORE_TRANSCRIPTOR_LOG_START		= "Transcriptor logging started."
VEM_CORE_TRANSCRIPTOR_LOG_END		= "Transcriptor logging ended."

VEM_CORE_WORLDBOSS_ENGAGED			= "世界Boss-%s可能正在作战。当前还有%s的生命值。 (由%s的VEM发送)"
VEM_CORE_WORLDBOSS_DEFEATED			= "世界Boss-%s可能战斗结束了。 (由%s的VEM发送)"

VEM_CORE_TIMER_FORMAT_SECS			= "%d秒"
VEM_CORE_TIMER_FORMAT_MINS			= "%d分钟"
VEM_CORE_TIMER_FORMAT				= "%d分%d秒"

VEM_CORE_MIN						= "分"
VEM_CORE_MIN_FMT					= "%d分"
VEM_CORE_SEC						= "秒"
VEM_CORE_SEC_FMT					= "%d秒"
VEM_CORE_DEAD						= "死亡"
VEM_CORE_OK							= "确定"

VEM_CORE_GENERIC_WARNING_OTHERS		= "和另外一个"
VEM_CORE_GENERIC_WARNING_OTHERS2	= "和另外%d个"
VEM_CORE_GENERIC_WARNING_BERSERK	= "%s%s后狂暴"
VEM_CORE_GENERIC_TIMER_BERSERK		= "狂暴"
VEM_CORE_OPTION_TIMER_BERSERK		= "计时条：$spell:26662"
VEM_CORE_GENERIC_TIMER_COMBAT		= "战斗开始"
VEM_CORE_OPTION_TIMER_COMBAT		= "显示战斗开始倒计时"
VEM_CORE_OPTION_HEALTH_FRAME		= "首领生命值窗口"

VEM_CORE_OPTION_CATEGORY_TIMERS		= "计时条"
VEM_CORE_OPTION_CATEGORY_WARNINGS	= "警报"
VEM_CORE_OPTION_CATEGORY_SPECWARNINGS	= "特殊警报"
VEM_CORE_OPTION_CATEGORY_SOUND			= "语音警告"
VEM_CORE_OPTION_CATEGORY_MISC		= "其它"

VEM_CORE_AUTO_RESPONDED						= "已自动回复."
VEM_CORE_STATUS_WHISPER						= "%s：%s，%d/%d存活"
--Bosses
VEM_CORE_AUTO_RESPOND_WHISPER				= "%s正在与%s交战，（当前%s，%d/%d存活）"
VEM_CORE_WHISPER_COMBAT_END_KILL			= "%s已在%s的战斗中取得胜利！"
VEM_CORE_WHISPER_COMBAT_END_KILL_STATS		= "%s已在%s的战斗中取得胜利！总计%d次胜利。"
VEM_CORE_WHISPER_COMBAT_END_WIPE_AT			= "%s在%s（%s）的战斗中灭团了。"
VEM_CORE_WHISPER_COMBAT_END_WIPE_STATS_AT	= "%s在%s（%s）的战斗中灭团了。该难度下总共失败%d次。"
--Scenarios (no percents. words like "fighting" or "wipe" changed to better fit scenarios)
VEM_CORE_AUTO_RESPOND_WHISPER_SCENARIO		= "%s正在与场景战役-%s交战，（当前%s，%d/%d存活）"
VEM_CORE_WHISPER_SCENARIO_END_KILL			= "%s已在场景战役-%s的战斗中取得胜利！"
VEM_CORE_WHISPER_SCENARIO_END_KILL_STATS	= "%s已在场景战役-%s的战斗中取得胜利！总计%d次胜利。"
VEM_CORE_WHISPER_SCENARIO_END_WIPE			= "%s在场景战役-%s的战斗中灭团了。"
VEM_CORE_WHISPER_SCENARIO_END_WIPE_STATS	= "%s在场景战役-%s的战斗中灭团了。该难度下总共失败%d次。"

VEM_CORE_VERSIONCHECK_HEADER		= "Voice Encounter Mods - 版本检测"
VEM_CORE_VERSIONCHECK_ENTRY			= "%s: %s (r%d)"--One Boss mod
VEM_CORE_VERSIONCHECK_ENTRY_TWO		= "%s: %s (r%d) & %s (r%d)"--Two Boss mods
VEM_CORE_VERSIONCHECK_ENTRY_NO_VEM		= "%s：尚未安装任何团队首领模组"
VEM_CORE_VERSIONCHECK_FOOTER			= "团队中有%d玩家正在使用VEM或DBM / %d玩家正在使用Bigwigs"
VEM_CORE_YOUR_VERSION_OUTDATED		= "你的Voice Encounter Mods已经过期。请访问 https://github.com/henryj/Voice-Encounter-Mods 下载最新版本。"
VEM_CORE_OUTDATED_PVP_MODS			= "你当前使用的VEM-PVP模块已经过期。PVP模块现在需要单独下载。请访问 http://www.deadlybossmods.com"
--VEM_BIG_WIGS (Same as English locales)
--VEM_BIG_WIGS_ALPHA (Same as English locales)

VEM_CORE_UPDATEREMINDER_HEADER			= "你的VEM版本已过期。\n你可以在如下地址下载到新版本%s（r%d）："
VEM_CORE_UPDATEREMINDER_HEADER_ALPHA	= "你的VEM Alpha 版本已过期了%d个版本。这可能导致你或其他团队成员出错。"
VEM_CORE_UPDATEREMINDER_FOOTER			= "按下 " .. (IsMacClient() and "Cmd-C" or "Ctrl-C")  ..  "复制下载地址到剪切板。"
VEM_CORE_UPDATEREMINDER_FOOTER_GENERIC	= "按下 " .. (IsMacClient() and "Cmd-C" or "Ctrl-C")  ..  "复制链接到剪切板。"
VEM_CORE_UPDATEREMINDER_NOTAGAIN		= "检测到新版本后弹出提示框"
VEM_CORE_UPDATEREMINDER_DISABLE			= "警告：你的VEM已经过时相当多的版本（%d个版本），它已被禁用，直到你更新。这是为了确保它不会导致你或其他团队成员出错。"
VEM_CORE_UPDATEREMINDER_HOTFIX			= "你的VEM版本会在这首领战斗有不准确的计时器或警告。这问题已被修正在下次正式版更新，或可以更新至最新的alpha版本立即修正此问题。"
VEM_CORE_UPDATEREMINDER_TESTVERSION		= "警告：你使用了不正确版本的VEM。请确保VEM版本和游戏版本一致。"
VEM_CORE_DBM							= "你好像在使用DBM。VEM在这种情况下无法被载入。"

VEM_CORE_MOVABLE_BAR				= "拖动我！"

VEM_PIZZA_SYNC_INFO					= "|Hplayer:%1$s|h[%1$s]|h向你发送了一个VEM计时条：'%2$s'\n|HVEM:cancel:%2$s:nil|h|cff3588ff[取消该计时]|r|h  |HVEM:ignore:%2$s:%1$s|h|cff3588ff[忽略来自%1$s的计时条]|r|h"
VEM_PIZZA_CONFIRM_IGNORE			= "是否要在该次游戏连接中屏蔽来自%s的计时条？"
VEM_PIZZA_ERROR_USAGE				= "命令：/vem [broadcast] timer <时间（秒）> <文本>"

--VEM_CORE_MINIMAP_TOOLTIP_HEADER (Same as English locales)
VEM_CORE_MINIMAP_TOOLTIP_FOOTER		= "Shift+拖动 / 右键拖动：拖动\nAlt+Shift+拖动：自由拖动"

VEM_CORE_RANGECHECK_HEADER			= "距离监视（%d码）"
VEM_CORE_RANGECHECK_SETRANGE		= "设置距离"
VEM_CORE_RANGECHECK_SOUNDS			= "声音"
VEM_CORE_RANGECHECK_SOUND_OPTION_1	= "声音提示：当有玩家接近时"
VEM_CORE_RANGECHECK_SOUND_OPTION_2	= "声音提示：多名玩家接近时"
VEM_CORE_RANGECHECK_SOUND_0			= "无"
VEM_CORE_RANGECHECK_SOUND_1			= "默认声音"
VEM_CORE_RANGECHECK_SOUND_2			= "蜂鸣"
VEM_CORE_RANGECHECK_HIDE			= "隐藏"
VEM_CORE_RANGECHECK_SETRANGE_TO		= "%d码"
VEM_CORE_RANGECHECK_LOCK			= "锁定框体"
VEM_CORE_RANGECHECK_OPTION_FRAMES	= "框体"
VEM_CORE_RANGECHECK_OPTION_RADAR	= "显示雷达框体"
VEM_CORE_RANGECHECK_OPTION_TEXT		= "显示文本框体"
VEM_CORE_RANGECHECK_OPTION_BOTH		= "同时显示2个框体"
VEM_CORE_RANGECHECK_OPTION_SPEED	= "更新频率（重载界面后生效）"
VEM_CORE_RANGECHECK_OPTION_SLOW		= "慢（适用于低端CPU）"
VEM_CORE_RANGECHECK_OPTION_AVERAGE	= "中"
VEM_CORE_RANGECHECK_OPTION_FAST		= "快（几乎实时）"
VEM_CORE_RANGERADAR_HEADER			= "距离雷达（%d码）"
VEM_CORE_RANGERADAR_IN_RANGE_TEXT	= "%d人在监视距离内"

VEM_CORE_INFOFRAME_LOCK				= "锁定框体"
VEM_CORE_INFOFRAME_HIDE				= "隐藏"
VEM_CORE_INFOFRAME_SHOW_SELF		= "永远显示你的能量值"		-- Always show your own power value even if you are below the threshold

VEM_LFG_INVITE						= "随机副本确认"

VEM_CORE_SLASHCMD_HELP				= {
	"可用命令：",
	"/vem version:进行团队范围的VEM版本检测（也可使用：ver）",
--	"/vem version2: 进行团队范围的VEM版本检测并密语给那些使用过期版本的玩家（也可使用：ver2）",
	"/vem unlock:显示一个可移动的计时条，可通过对它来移动所有VEM计时条的位置（也可使用：move）",
	"/vem timer/ctimer/ltimer/cltimer <x> <text>: 启动一个 <x> 秒的计时器。文本内容为 <text>. 去 http://tinyurl.com/kwsfl59 查阅每种函数用法",
	"/vem broadcast timer <x> <文本>:向团队广播一个以<文本>为名称的时间为<x>秒的倒计时（需要团队领袖或助理权限）",
	"/vem timer endloop: 停止所有的 ltimer 和 cltimer.",
	"/vem break <分钟>: 开始一个<分钟>时间的休息计时条。并向所有团队成员发送这个VEM休息计时条（需开启团队广播及助理权限）。",
	"/vem pull <秒>: 开始一个<秒>时间的开怪计时条。 并向所有团队成员发送这个VEM开怪计时条（需开启团队广播及助理权限）。",
	"/vem arrow: 显示VEM箭头，输入/vem arrow查询 更多信息。",
	"/vem lockout: 查询团队成员当前的副本锁定状态（也可使用：lockouts, ids）（需要团队领袖或助理权限）。",
	"/vem lag: 检测全团延时。",
	"/vem help: 显示可用命令的说明， 也就是你现在看到的东西。"
}

VEM_ERROR_NO_PERMISSION				= "你无权进行该操作。"

VEM_CORE_BOSSHEALTH_HIDE_FRAME		= "隐藏生命值框体"

VEM_CORE_ALLIANCE					= "联盟"
VEM_CORE_HORDE						= "部落"

VEM_CORE_UNKNOWN					= "未知"
VEM_CORE_LEFT						= "左"
VEM_CORE_RIGHT						= "右"
VEM_CORE_BACK						= "后"
VEM_CORE_FRONT						= "前"

VEM_CORE_SETTO						= "设置为："
VEM_CORE_SETWISP					= "的观察目标设置为你，请协助检查是否正确。"
VEM_CORE_WRONGSET					= "|cFFFF0000你输入了错误的内容："

VEM_CORE_BREAK_START				= "开始休息 - %s分钟！"
VEM_CORE_BREAK_MIN					= "%s分钟后休息结束！"
VEM_CORE_BREAK_SEC					= "%s秒后休息结束！"
VEM_CORE_TIMER_BREAK				= "休息时间！"
VEM_CORE_ANNOUNCE_BREAK_OVER		= "休息已结束"

VEM_CORE_TIMER_PULL					= "开怪倒计时"
VEM_CORE_ANNOUNCE_PULL				= "%d秒后开怪 （由 %s 发送）"
VEM_CORE_ANNOUNCE_PULL_NOW			= "开怪！"
VEM_CORE_ANNOUNCE_PULL_CANCEL		= "取消了开怪倒计时"

VEM_CORE_ACHIEVEMENT_TIMER_SPEED_KILL = "成就：限时击杀"

-- Auto-generated Warning Localizations
VEM_CORE_AUTO_ANNOUNCE_TEXTS.target				= "%s -> >%%s<"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.targetcount		= "%s (%%d) -> >%%s<"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.spell				= "%s"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.ends 				= "%s 结束"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.fades				= "%s 消失"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.adds				= "%s剩余：%%d"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.cast				= "正在施放 %s：%.1f秒"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.soon				= "即将 %s"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.prewarn			= "%2$s后 %1$s"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.phase				= "第%s阶段"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.prephase			= "第%s阶段 即将到来"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.count				= "%s (%%d)"
VEM_CORE_AUTO_ANNOUNCE_TEXTS.stack				= "%s -> >%%s< (%%d)"

local prewarnOption			= "预警：$spell:%s"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.target			= "警报：$spell:%s的目标"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.targetcount		= "警报：$spell:%s的目标"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.spell			= "警报：$spell:%s"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.ends				= "警报：$spell:%s结束"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.endtarget		= "警报：$spell:%s结束"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.fades			= "警报：$spell:%s消失"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.adds				= "警报：$spell:%s剩余数量"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.cast				= "警报：$spell:%s的施放"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.soon				= prewarnOption
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.prewarn			= prewarnOption
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.phase			= "警报：第%s阶段"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.prephase			= "预警：第%s阶段"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.count			= "警报：$spell:%s"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS.stack			= "警报：$spell:%s叠加层数"

VEM_CORE_AUTO_SPEC_WARN_TEXTS.spell				= "%s!"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.ends				= "%s 结束"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.fades				= "%s 消失"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.soon				= "%s 即将到来"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.prewarn			= "%s 于 %s"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.dispel			= ">%%s<中了%s - 快驱散"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.interrupt			= "%s - 快打断"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.you				= "你中了%s"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.target			= ">%%s<中了%s"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.taunt				= ">%%s<中了%s - 快嘲讽"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.close				= "你附近的>%%s<中了%s"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.move				= "%s - 快躲开"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.moveaway			= "%s - 离开人群"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.moveto			= "%s - 靠近 >%%s<"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.run				= "%s - 快跑"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.cast				= "%s - 停止施法"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.reflect			= ">%%s<中了%s - 快停手"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.count				= "%s! (%%d)"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.stack				= "你叠加了%%d层%s"
VEM_CORE_AUTO_SPEC_WARN_TEXTS.switch			= ">%s< - 转换目标"

-- Auto-generated Special Warning Localizations
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.spell			= "特殊警报：$spell:%s"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.ends			= "特殊警报：$spell:%s结束"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.fades			= "特殊警报：$spell:%s消失"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.soon			= "特殊警报：$spell:%s即将到来"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.dispel			= "特殊警报：需要驱散或偷取$spell:%s"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.reflect 		= "特殊警报：$spell:%s需要停止攻击"--Spell Reflect
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.interrupt		= "特殊警报：需要打断$spell:%s"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.you				= "特殊警报：当你受到$spell:%s影响时"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.target			= "特殊警报：当他人受到$spell:%s影响时"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.taunt 			= "特殊警报：当另外一个T中了$spell:%s并需要你嘲讽时"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.close			= "特殊警报：当你附近有人受到$spell:%s影响时"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.move			= "特殊警报：当你受到$spell:%s影响时"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.moveaway		= "特殊警报：当你受到$spell:%s影响并需要跑开人群时"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.moveto			= "特殊警报：当他人中了$spell:%s并需要你去靠近时"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.run				= "特殊警报：$spell:%s"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.cast			= "特殊警报：$spell:%s的施放（用于打断）"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.reflect 		= "特殊警报：$spell:%s需要停止攻击"--Spell Reflect
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.count 			= "特殊警报：$spell:%s"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.stack			= "特殊警报：当叠加了>=%d层$spell:%s时"
VEM_CORE_AUTO_SPEC_WARN_OPTIONS.switch 			= "特殊警报：针对$spell:%s需要转换目标"

-- Auto-generated Timer Localizations
VEM_CORE_AUTO_TIMER_TEXTS.target				= "%s: >%%s<"
VEM_CORE_AUTO_TIMER_TEXTS.cast					= "%s"
VEM_CORE_AUTO_TIMER_TEXTS.active				= "%s结束"--Buff/Debuff/event on boss
VEM_CORE_AUTO_TIMER_TEXTS.fades					= "%s消失"--Buff/Debuff on players
VEM_CORE_AUTO_TIMER_TEXTS.cd					= "%s冷却"
VEM_CORE_AUTO_TIMER_TEXTS.cdcount				= "%s冷却（%%d）"
VEM_CORE_AUTO_TIMER_TEXTS.cdsource				= "%s冷却: >%%s<"
VEM_CORE_AUTO_TIMER_TEXTS.next 					= "下一次%s"
VEM_CORE_AUTO_TIMER_TEXTS.nextcount				= "下一次%s（%%d）"
VEM_CORE_AUTO_TIMER_TEXTS.nextsource			= "下一次%s: >%%s<"
VEM_CORE_AUTO_TIMER_TEXTS.achievement 			= "%s"

VEM_CORE_AUTO_TIMER_OPTIONS.target				= "计时条：$spell:%s减益效果持续时间"
VEM_CORE_AUTO_TIMER_OPTIONS.cast				= "计时条：$spell:%s施法时间"
VEM_CORE_AUTO_TIMER_OPTIONS.active				= "计时条：$spell:%s效果持续时间"
VEM_CORE_AUTO_TIMER_OPTIONS.fades				= "计时条：$spell:%s何时从玩家身上消失"
VEM_CORE_AUTO_TIMER_OPTIONS.cd					= "计时条：$spell:%s冷却时间"
VEM_CORE_AUTO_TIMER_OPTIONS.cdcount				= "计时条：$spell:%s冷却时间"
VEM_CORE_AUTO_TIMER_OPTIONS.cdsource			= "计时条：$spell:%s冷却时间以及来源"
VEM_CORE_AUTO_TIMER_OPTIONS.next				= "计时条：下一次$spell:%s"
VEM_CORE_AUTO_TIMER_OPTIONS.nextcount			= "计时条：下一次$spell:%s"
VEM_CORE_AUTO_TIMER_OPTIONS.nextsource			= "计时条：下一次$spell:%s以及来源"
VEM_CORE_AUTO_TIMER_OPTIONS.achievement			= "计时条：成就%s"

VEM_CORE_AUTO_ICONS_OPTION_TEXT				= "为$spell:%s的目标添加团队标记"
VEM_CORE_AUTO_ICONS_OPTION_TEXT2			= "为$spell:%s添加团队标记"
VEM_CORE_AUTO_ARROW_OPTION_TEXT				= "为$spell:%s的目标添加箭头"
VEM_CORE_AUTO_ARROW_OPTION_TEXT2			= "为$spell:%s的目标添加远离箭头"
VEM_CORE_AUTO_SOUND_OPTION_TEXT				= "声音警报（快跑啊，小姑娘）：$spell:%s"
VEM_CORE_AUTO_COUNTDOWN_OPTION_TEXT			= "声音警报：$spell:%s的冷却时间倒计时"
VEM_CORE_AUTO_COUNTDOWN_OPTION_TEXT2		= "声音警报：$spell:%s消失时"
VEM_CORE_AUTO_COUNTOUT_OPTION_TEXT			= "声音警报：$spell:%s的持续时间正计时"
VEM_CORE_AUTO_YELL_OPTION_TEXT				= "当你受到$spell:%s影响时时大喊"
VEM_CORE_AUTO_YELL_ANNOUNCE_TEXT			= UnitName("player") .. " 中了 %s!!!"
VEM_CORE_AUTO_RANGE_OPTION_TEXT				= "距离监视(%s)：$spell:%s"--string used for range so we can use things like "5/2" as a value for that field
VEM_CORE_AUTO_RANGE_OPTION_TEXT_SHORT		= "距离监视(%s)"--For when a range frame is just used for more than one thing
VEM_CORE_AUTO_INFO_FRAME_OPTION_TEXT		= "信息框：$spell:%s"
VEM_CORE_AUTO_READY_CHECK_OPTION_TEXT		= "当首领开打时拨放准备检查的音效（即使没有选定目标）"

-- New special warnings
VEM_CORE_MOVE_SPECIAL_WARNING_BAR		= "可拖动的特别警报"
VEM_CORE_MOVE_SPECIAL_WARNING_TEXT		= "特别警报"

VEM_CORE_RANGE_CHECK_ZONE_UNSUPPORTED	= "此区域不支持%d码的距离检查。\n已支持的距离有10，11，15及28码。"

VEM_ARROW_MOVABLE				= "可移动箭头"
VEM_ARROW_NO_RAIDGROUP			= "此功能仅适用于副本中的团队。"
VEM_ARROW_ERROR_USAGE	= {
	"VEM-Arrow 可用命令：",
	"/vem arrow <x> <y>  新建一个箭头到指定位置(使用世界坐标系)",
	"/vem arrow map <x> <y>  新建一个箭头到指定位置 (使用区域地图坐标系)",
	"/vem arrow <玩家名字>  新建一个箭头并指向你队伍或团队中特定的玩家。请区分大小写。",
	"/vem arrow hide  隐藏箭头",
	"/vem arrow move  移动或锁定箭头"
}

VEM_SPEED_KILL_TIMER_TEXT	= "击杀记录"
VEM_SPEED_KILL_TIMER_OPTION	= "计时条：最速击杀记录"
VEM_SPEED_CLEAR_TIMER_TEXT	= "最速清除"
VEM_COMBAT_RES_TIMER_TEXT	= "Next CR Charge"


VEM_REQ_INSTANCE_ID_PERMISSION		= "%s请求获取你现在副本的存档ID与进度。是否愿意向&s提交进度？\n\n注意：在接受后，他可以随时查看您当前的进度情况，直到您下线、掉线或重载用户界面。"
VEM_ERROR_NO_RAID					= "使用该功能需要身处一个团队中。"
VEM_INSTANCE_INFO_REQUESTED			= "已发送团队副本进度查看请求。\n请注意，团员会根据需要选择接受或拒绝该请求。请求时间约一分钟，请等待。"
VEM_INSTANCE_INFO_STATUS_UPDATE		= "已收到%d名团员的进度回复（已安装VEM的团员有%d名）：%d人接受请求，%d人拒绝。生成数据需要约%d秒，请等待。"
VEM_INSTANCE_INFO_ALL_RESPONSES		= "所有团员接受请求。"
VEM_INSTANCE_INFO_DETAIL_DEBUG		= "发送者：%s 结果类型：%s 副本名：%s 副本ID：%s 难度：%d 规模：%d 进度：%s"
VEM_INSTANCE_INFO_DETAIL_HEADER		= "%s（%d），难度%d："
VEM_INSTANCE_INFO_DETAIL_INSTANCE	= "    ID %s, 进度%d：%s"
VEM_INSTANCE_INFO_STATS_DENIED		= "拒绝请求：%s"
VEM_INSTANCE_INFO_STATS_AWAY		= "暂离：%s"
VEM_INSTANCE_INFO_STATS_NO_RESPONSE	= "未安装VEM：%s"
VEM_INSTANCE_INFO_RESULTS			= "副本进度扫描结果。" --Note that instances might show up more than once if there are players with localized WoW clients in your raid.
VEM_INSTANCE_INFO_SHOW_RESULTS		= "回复请求的玩家：%s\n|HVEM:showRaidIdResults|h|cff3588ff[点击显示结果]|r|h"

VEM_CORE_LAG_CHECKING				= "延时检测请稍后..."
VEM_CORE_LAG_HEADER					= "VEM - 延时检测"
VEM_CORE_LAG_ENTRY					= "%s：世界延时[%d毫秒] / 本地延时[%d毫秒]"
VEM_CORE_LAG_FOOTER					= "未反馈此次检测的团员:%s"


VEM_CORE_SOUND_NOFILE		 		= "未发现语音文件"
VEM_CORE_SOUND_NOFILEUSAGE		 	= "    VEM没有发现已启用的语音包，请检查语音包是否正确并已启用"
VEM_CORE_SOUND_UNNAME		 		= "自定义语音"
VEM_CORE_SOUND_UNUSAGE		 		= "    这是一份自定义的语音文件，但作者很懒，他没有写介绍。"