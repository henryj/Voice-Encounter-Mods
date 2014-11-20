
VEM_CORE_NEED_SUPPORT				= "Are you good with programming or languages? If yes, the VEM team needs your help to keep VEM the best encounter mod for WoW. Join the team by visiting https://github.com/henryj/Voice-Encounter-Mods (English) or http://bbs.ngacn.cc/read.php?tid=5397726&page=1 (Chinese)."
VEM_HOW_TO_USE_MOD					= "Welcome to VEM. Type /vem help for a list of supported commands. To access options type /vem in your chat to begin configuration. Load specific zones manually to configure any boss specific settings to your liking as well. VEM tries to do this for you by scanning your spec on first run, but some might want additional options turned on anyways."

VEM_FORUMS_MESSAGE					= "Found a bug or wrong timer? Do you think some mod would need an additional warning, timer or special feature?\nVisit the new Voice Encounter Mods Github site at |HVEM:forums|h|cff3588ffhttps://github.com/henryj/Voice-Encounter-Mods|r (you can click the link to copy the URL)"
VEM_FORUMS_COPY_URL_DIALOG			= "Come visit our Github site"

VEM_CORE_VEM						= "VEM is not enabled for this character"
VEM_CORE_LOAD_MOD_ERROR				= "Error while loading boss mods for %s: %s"
VEM_CORE_LOAD_MOD_SUCCESS			= "Loaded '%s' mods. For more options, type /vem or /vem help in your chat."
VEM_CORE_LOAD_MOD_COMBAT			= "Loading of '%s' delayed until you leave combat"
VEM_CORE_LOAD_GUI_ERROR				= "Could not load GUI: %s"
VEM_CORE_LOAD_GUI_COMBAT			= "GUI cannot be initially loaded in combat. GUI will be loaded out of combat. After GUI loaded, you can load GUI in combat."
VEM_CORE_LOAD_SKIN_COMBAT			= "VEM timers failed to skin during combat. Your timers will likely not work correctly and generate several lua errors. This is often caused by 3rd party mods trying to apply skin changes in combat. Recommended to reloadui after you leave combat"
VEM_CORE_BAD_LOAD					= "VEM has detected your mod for this instance failed to fully load correctly because of combat. As soon as you are out of combat, please do /console reloadui as soon as possible."

VEM_CORE_BLIZZ_BUGS					= "Blizzard Bug with Addons in 6.0:\n1. If you play with sound effects enabled, you may lose addon sounds in combat if number of simultaneous sounds exceeds your max sound channels. Patch 6.0 set mods to lower channel priority. To work around this problem, VEM now force sets your sound channels to 64 automatically. If you still experience mod sound loss, only work around is to disable 'Sound Effects' completely."

VEM_CORE_DYNAMIC_DIFFICULTY_CLUMP	= "VEM has disabled dynamic range frame on this fight do to insufficient information about number of players needed to affect clump check for a group of your size."
VEM_CORE_DYNAMIC_ADD_COUNT			= "VEM has disabled add count warnings on this fight do to insufficient information about number of adds that spawn for a group of your size."
VEM_CORE_DYNAMIC_MULTIPLE			= "VEM has disabled multiple features on this fight do to insufficient information about certain mechanics for a group of your size."

VEM_CORE_LOOT_SPEC_REMINDER			= "Your current spec is %s. Your current loot choice is %s."

VEM_CORE_BIGWIGS_ICON_CONFLICT		= "VEM has detected that you have raid icons turned on in both BigWigs and VEM. Please disable icons in one of them to avoid conflict with your group leader"

VEM_CORE_PROVINGGROUNDS_AD			= "VEM-ProvingGrounds is available for this content. You can find on deadlybossmods.com or on Curse. This message will only display once."

VEM_CORE_COMBAT_STARTED				= "%s engaged. Good luck and have fun! :)"
VEM_CORE_COMBAT_STARTED_IN_PROGRESS	= "Engaged an in progress fight against %s. Good luck and have fun! :)"
VEM_CORE_GUILD_COMBAT_STARTED		= "%s has been engaged by guild"
VEM_CORE_SCENARIO_STARTED			= "%s started. Good luck and have fun! :)"
VEM_CORE_SCENARIO_STARTED_IN_PROGRESS	= "Joined %s as in progress. Good luck and have fun! :)"
VEM_CORE_BOSS_DOWN					= "%s down after %s!"
VEM_CORE_BOSS_DOWN_I				= "%s down! You have %d total victories."
VEM_CORE_BOSS_DOWN_L				= "%s down after %s! Your last kill took %s and your fastest kill took %s. You have %d total victories."
VEM_CORE_BOSS_DOWN_NR				= "%s down after %s! This is a new record! (Old record was %s). You have %d total victories."
VEM_CORE_GUILD_BOSS_DOWN			= "%s has been defeated by guild after %s!"
VEM_CORE_SCENARIO_COMPLETE			= "%s completed after %s!"
VEM_CORE_SCENARIO_COMPLETE_I		= "%s completed! You have %d total clears."
VEM_CORE_SCENARIO_COMPLETE_L		= "%s completed after %s! Your last clear took %s and your fastest clear took %s. You have %d total clears."
VEM_CORE_SCENARIO_COMPLETE_NR		= "%s completed after %s! This is a new record! (Old record was %s). You have %d total clears."
VEM_CORE_COMBAT_ENDED_AT			= "Combat against %s (%s) ended after %s."
VEM_CORE_COMBAT_ENDED_AT_LONG		= "Combat against %s (%s) ended after %s. You have %d total wipes on this difficulty."
VEM_CORE_GUILD_COMBAT_ENDED_AT		= "Guild has wiped on %s (%s) after %s."
VEM_CORE_SCENARIO_ENDED_AT			= "%s ended after %s."
VEM_CORE_SCENARIO_ENDED_AT_LONG		= "%s ended after %s. You have %d total incompletes on this difficulty."
VEM_CORE_COMBAT_STATE_RECOVERED		= "%s was engaged %s ago, recovering timers..."
VEM_CORE_TRANSCRIPTOR_LOG_START		= "Transcriptor logging started."
VEM_CORE_TRANSCRIPTOR_LOG_END		= "Transcriptor logging ended."

VEM_CORE_WORLDBOSS_ENGAGED			= "%s was possibly engaged on your realm at %s percent health. (Sent by %s)"
VEM_CORE_WORLDBOSS_DEFEATED			= "%s was possibly defeated on your realm (Sent by %s)."

VEM_CORE_TIMER_FORMAT_SECS			= "%d |4second:seconds;"
VEM_CORE_TIMER_FORMAT_MINS			= "%d |4minute:minutes;"
VEM_CORE_TIMER_FORMAT				= "%d |4minute:minutes; and %d |4second:seconds;"

VEM_CORE_MIN						= "min"
VEM_CORE_MIN_FMT					= "%d min"
VEM_CORE_SEC						= "sec"
VEM_CORE_SEC_FMT					= "%d sec"

VEM_CORE_GENERIC_WARNING_OTHERS		= "and one other"
VEM_CORE_GENERIC_WARNING_OTHERS2	= "and %d others"
VEM_CORE_GENERIC_WARNING_BERSERK	= "Berserk in %s %s"
VEM_CORE_GENERIC_TIMER_BERSERK		= "Berserk"
VEM_CORE_OPTION_TIMER_BERSERK		= "Show timer for $spell:26662"
VEM_CORE_GENERIC_TIMER_COMBAT		= "Combat starts"
VEM_CORE_OPTION_TIMER_COMBAT		= "Show timer for combat start"
VEM_CORE_OPTION_HEALTH_FRAME		= "Show boss health frame"

VEM_CORE_OPTION_CATEGORY_TIMERS		= "Bars"
VEM_CORE_OPTION_CATEGORY_WARNINGS	= "Announces"
VEM_CORE_OPTION_CATEGORY_SPECWARNINGS	= "Special Warnings"
VEM_CORE_OPTION_CATEGORY_SOUND			= "Sound Warning"

VEM_CORE_AUTO_RESPONDED						= "Auto-responded."
VEM_CORE_STATUS_WHISPER						= "%s: %s, %d/%d people alive"
--Bosses
VEM_CORE_AUTO_RESPOND_WHISPER				= "%s is busy fighting against %s (%s, %d/%d people alive)"
VEM_CORE_WHISPER_COMBAT_END_KILL			= "%s has defeated %s!"
VEM_CORE_WHISPER_COMBAT_END_KILL_STATS		= "%s has defeated %s! They have %d total victories."
VEM_CORE_WHISPER_COMBAT_END_WIPE_AT			= "%s has wiped on %s at %s"
VEM_CORE_WHISPER_COMBAT_END_WIPE_STATS_AT	= "%s has wiped on %s at %s. They have %d total wipes on this difficulty."
--Scenarios (no percents. words like "fighting" or "wipe" changed to better fit scenarios)
VEM_CORE_AUTO_RESPOND_WHISPER_SCENARIO		= "%s is busy in %s (%d/%d people alive)"
VEM_CORE_WHISPER_SCENARIO_END_KILL			= "%s has completed %s!"
VEM_CORE_WHISPER_SCENARIO_END_KILL_STATS	= "%s has completed %s! They have %d total victories."
VEM_CORE_WHISPER_SCENARIO_END_WIPE			= "%s did not complete %s"
VEM_CORE_WHISPER_SCENARIO_END_WIPE_STATS	= "%s did not complete %s. They have %d total incompletes on this difficulty."

VEM_CORE_VERSIONCHECK_HEADER		= "Boss Mod - Versions"
VEM_CORE_VERSIONCHECK_ENTRY			= "%s: %s (r%d)"--One Boss mod
VEM_CORE_VERSIONCHECK_ENTRY_TWO		= "%s: %s (r%d) & %s (r%d)"--Two Boss mods
VEM_CORE_VERSIONCHECK_ENTRY_NO_VEM	= "%s: No boss mod installed"
VEM_CORE_VERSIONCHECK_FOOTER		= "Found %d player(s) with VEM or DBM & %d player(s) with Bigwigs"
VEM_CORE_YOUR_VERSION_OUTDATED      = "Your version of Voice Encounter Mods is out-of-date. Please visit https://github.com/henryj/Voice-Encounter-Mods to get the latest version."
VEM_BIG_WIGS						= "BigWigs"
VEM_BIG_WIGS_ALPHA					= "BigWigs Alpha"

VEM_CORE_UPDATEREMINDER_HEADER			= "Your version of Voice Encounter Mods is out-of-date.\n Version %s (r%d) is available for download here:"
VEM_CORE_UPDATEREMINDER_HEADER_ALPHA	= "Your alpha version of Voice Encounter Mods is out-of-date.\n You are at least %d test versions behind. It is recommended that VEM users use the latest alpha or latest stable version. Out of date alphas can lead to poor or incomplete functionality."
VEM_CORE_UPDATEREMINDER_FOOTER			= "Press " .. (IsMacClient() and "Cmd-C" or "Ctrl-C")  ..  " to copy the download link to your clipboard."
VEM_CORE_UPDATEREMINDER_FOOTER_GENERIC	= "Press " .. (IsMacClient() and "Cmd-C" or "Ctrl-C")  ..  " to copy the link to your clipboard."
VEM_CORE_UPDATEREMINDER_DISABLE			= "WARNING: Do to your Voice Encounter Mods being drastically out of date (at least %d revisions), it has been disabled until updated. This is to ensure old and incompatible code doesn't cause poor play experience for yourself or fellow raid members."
VEM_CORE_UPDATEREMINDER_HOTFIX			= "Your version of VEM will have incorrect timers or warnings during this boss encounter. This is corrected in a newer release (or alpha release if newer release version not yet available)"
VEM_CORE_UPDATEREMINDER_MAJORPATCH		= "WARNING: Do to your Voice Encounter Mods being out of date, VEM has been disabled until updated, since this is a major game patch. This is to ensure old and incompatible code doesn't cause poor play experience for yourself or fellow group members. Make sure you download a newer version from deadlybossmods.com or curse as soon as possible. If you are getting this message on 6.0 beta, download beta mod here: http://forums.elitistjerks.com/topic/132677-deadly-boss-mods-60-testing"
VEM_CORE_UPDATEREMINDER_TESTVERSION		= "WARNING: You are using a version of Voice Encounter Mods not intended to be used with this game version. Please make sure you download the appropriate version for your game client from deadlybossmods.com or curse."
VEM_CORE_DBM							= "WARNING: You are running both Voice Encounter Mods and Deadly Boss Mods. VEM will not run in this configuration and therefore will not be loaded."

VEM_CORE_MOVABLE_BAR				= "Drag me!"

VEM_PIZZA_SYNC_INFO					= "|Hplayer:%1$s|h[%1$s]|h sent you a VEM timer: '%2$s'\n|HVEM:cancel:%2$s:nil|h|cff3588ff[Cancel this timer]|r|h  |HVEM:ignore:%2$s:%1$s|h|cff3588ff[Ignore timers from %1$s]|r|h"
VEM_PIZZA_CONFIRM_IGNORE			= "Do you really want to ignore VEM timers from %s for this session?"
VEM_PIZZA_ERROR_USAGE				= "Usage: /vem [broadcast] timer <time> <text>. <time> must be greater than 1."

VEM_CORE_MINIMAP_TOOLTIP_HEADER		= "Voice Encounter Mods"
VEM_CORE_MINIMAP_TOOLTIP_FOOTER		= "Shift+click or right-click to move\nAlt+shift+click for free drag and drop"

VEM_CORE_RANGECHECK_HEADER			= "Range Check (%d yd)"
VEM_CORE_RANGECHECK_SETRANGE		= "Set range"
VEM_CORE_RANGECHECK_SOUNDS			= "Sounds"
VEM_CORE_RANGECHECK_SOUND_OPTION_1	= "Sound when one player is in range"
VEM_CORE_RANGECHECK_SOUND_OPTION_2	= "Sound when more than one player is in range"
VEM_CORE_RANGECHECK_SOUND_0			= "No sound"
VEM_CORE_RANGECHECK_SOUND_1			= "Default sound"
VEM_CORE_RANGECHECK_SOUND_2			= "Annoying beep"
VEM_CORE_RANGECHECK_SETRANGE_TO		= "%d yd"
VEM_CORE_RANGECHECK_OPTION_FRAMES	= "Frames"
VEM_CORE_RANGECHECK_OPTION_RADAR	= "Show radar frame"
VEM_CORE_RANGECHECK_OPTION_TEXT		= "Show text frame"
VEM_CORE_RANGECHECK_OPTION_BOTH		= "Show both frames"
VEM_CORE_RANGERADAR_HEADER			= "Range Radar (%d yd)"
VEM_CORE_RANGERADAR_IN_RANGE_TEXT	= "%d players in range"

VEM_CORE_INFOFRAME_SHOW_SELF		= "Always show your power"		-- Always show your own power value even if you are below the threshold

VEM_LFG_INVITE						= "LFG Invite"

VEM_CORE_SLASHCMD_HELP				= {
	"Available slash commands:",
	"/vem version: Performs a raid-wide version check (alias: ver).",
--	"/vem version2: Performs a raid-wide version check and whispers members who are out of date (alias: ver2).",
	"/vem unlock: Shows a movable status bar timer (alias: move).",
	"/vem timer/ctimer/ltimer/cltimer <x> <text>: Starts a <x> second VEM Timer with the name <text>. See http://tinyurl.com/kwsfl59 for each timer type usage",
	"/vem broadcast timer/ctimer/ltimer/cltimer <x> <text>: Broadcasts a <x> second VEM Timer with the name <text> to the raid (requires leader/promoted status).",
	"/vem timer endloop: Stops any looping ltimer or cltimer.",
	"/vem break <min>: Starts a break timer for <min> minutes. Gives all raid members with VEM a break timer (requires leader/promoted status).",
	"/vem pull <sec>: Starts a pull timer for <sec> seconds. Gives all raid members with VEM a pull timer (requires leader/promoted status).",
	"/vem arrow: Shows the VEM arrow, see /vem arrow help for details.",
	"/vem lockout: Asks raid members for their current raid instance lockouts (aliases: lockouts, ids) (requires leader/promoted status).",
	"/vem lag: Performs a raid-wide latency check.",
	"/vem help: Shows this message."
}

VEM_ERROR_NO_PERMISSION				= "You don't have the required permission to do this."

VEM_CORE_BOSSHEALTH_HIDE_FRAME		= "Close health frame"

VEM_CORE_UNKNOWN					= "unknown"--UNKNOWN which is "Unknown" (does u vs U matter?)
VEM_CORE_LEFT						= "Left"
VEM_CORE_RIGHT						= "Right"
VEM_CORE_BACK						= "Back"--BACK
VEM_CORE_FRONT						= "Front"

VEM_CORE_SETTO						= "Set To: "
VEM_CORE_SETWISP					= " set to you"
VEM_CORE_WRONGSET					= "|cFFFF0000You have entered the wrong content: "

VEM_CORE_BREAK_START				= "Break starting now -- you have %s minute(s)!"
VEM_CORE_BREAK_MIN					= "Break ends in %s minute(s)!"
VEM_CORE_BREAK_SEC					= "Break ends in %s seconds!"
VEM_CORE_TIMER_BREAK				= "Break time!"
VEM_CORE_ANNOUNCE_BREAK_OVER		= "Break time is over"

VEM_CORE_TIMER_PULL					= "Pull in"
VEM_CORE_ANNOUNCE_PULL				= "Pull in %d sec. (Sent by %s)"
VEM_CORE_ANNOUNCE_PULL_NOW			= "Pull now!"
VEM_CORE_ANNOUNCE_PULL_CANCEL		= "Cancel Pull Countdown!"

VEM_CORE_ACHIEVEMENT_TIMER_SPEED_KILL = "Achievement"--BATTLE_PET_SOURCE_6

-- Auto-generated Warning Localizations
VEM_CORE_AUTO_ANNOUNCE_TEXTS = {
	target		= "%s on >%%s<",
	targetcount	= "%s (%%d) on >%%s<",
	spell		= "%s",
	ends 		= "%s ended",
	endtarget	= "%s ended: >%%s<",
	fades		= "%s faded",
	adds		= "%s remaining: %%d",
	cast		= "Casting %s: %.1f sec",
	soon		= "%s soon",
	prewarn		= "%s in %s",
	phase		= "Phase %s",
	prephase	= "Phase %s soon",
	count		= "%s (%%d)",
	stack		= "%s on >%%s< (%%d)"
}

local prewarnOption = "Show pre-warning for $spell:%s"
VEM_CORE_AUTO_ANNOUNCE_OPTIONS = {
	target		= "Announce $spell:%s targets",
	targetcount	= "Announce $spell:%s targets",
	spell		= "Show warning for $spell:%s",
	ends		= "Show warning when $spell:%s has ended",
	endtarget	= "Show warning when $spell:%s has ended",
	fades		= "Show warning when $spell:%s has faded",
	adds		= "Announce how many $spell:%s remain",
	cast		= "Show warning when $spell:%s is being cast",
	soon		= prewarnOption,
	prewarn 	= prewarnOption,
	phase		= "Announce Phase %s",
	prephase	= "Show a prewarning for Phase %s",
	count		= "Show warning for $spell:%s",
	stack		= "Announce $spell:%s stacks"
}

VEM_CORE_AUTO_SPEC_WARN_TEXTS = {
	spell		= "%s!",
	ends		= "%s ended",
	fades		= "%s faded",
	soon		= "%s soon",
	prewarn		= "%s in %s",
	dispel		= "%s on >%%s< - dispel now",
	interrupt	= "%s - interrupt >%%s<!",
	you			= "%s on you",
	target		= "%s on >%%s<",
	taunt		= "%s on >%%s< - taunt now",
	close		= "%s on >%%s< near you",
	move		= "%s - move away",
	moveaway	= "%s - move away from others",
	moveto		= "%s - move to >%%s<",
	run			= "%s - run away",
	cast		= "%s - stop casting",
	reflect		= "%s on >%%s< - stop attacking",
	count		= "%s! (%%d)",
	stack		= "%%d stacks of %s on you",
	switch		= ">%s< - switch targets"
}

-- Auto-generated Special Warning Localizations
VEM_CORE_AUTO_SPEC_WARN_OPTIONS = {
	spell 		= "Show special warning for $spell:%s",
	ends 		= "Show special warning when $spell:%s has ended",
	fades 		= "Show special warning when $spell:%s has faded",
	soon 		= "Show pre-special warning for $spell:%s",
	prewarn 	= "Show pre-special warning %d seconds before $spell:%s",
	dispel 		= "Show special warning to dispel/spellsteal $spell:%s",
	interrupt	= "Show special warning to interrupt $spell:%s",
	you 		= "Show special warning when you are affected by $spell:%s",
	target 		= "Show special warning when someone is affected by $spell:%s",
	taunt 		= "Show special warning to taunt when other tank affected by $spell:%s",
	close 		= "Show special warning when someone close to you is affected by $spell:%s",
	move 		= "Show special warning to move out from $spell:%s",
	moveaway	= "Show special warning to move away from others for $spell:%s",
	moveto		= "Show special warning to move to someone affected by $spell:%s",
	run 		= "Show special warning to run away from $spell:%s",
	cast 		= "Show special warning to stop casting for $spell:%s",--Spell Interrupt
	reflect 	= "Show special warning to stop attacking $spell:%s",--Spell Reflect
	count 		= "Show special warning for $spell:%s",
	stack 		= "Show special warning when you are affected by >=%d stacks of $spell:%s",
	switch		= "Show special warning to switch targets for $spell:%s"
}

-- Auto-generated Timer Localizations
VEM_CORE_AUTO_TIMER_TEXTS = {
	target		= "%s: >%%s<",
	cast		= "%s",
	active		= "%s ends",--Buff/Debuff/event on boss
	fades		= "%s fades",--Buff/Debuff on players
	cd			= "%s CD",
	cdcount		= "%s CD (%%d)",
	cdsource	= "%s CD: >%%s<",
	next		= "Next %s",
	nextcount	= "Next %s (%%d)",
	nextsource	= "Next %s: >%%s<",
	achievement	= "%s"
}

VEM_CORE_AUTO_TIMER_OPTIONS = {
	target		= "Show timer for $spell:%s debuff",
	cast		= "Show timer for $spell:%s cast",
	active		= "Show timer for $spell:%s duration",
	fades		= "Show timer for when $spell:%s fades from players",
	cd			= "Show timer for $spell:%s cooldown",
	cdcount		= "Show timer for $spell:%s cooldown",
	cdsource	= "Show timer (with source) for $spell:%s cooldown",--Maybe better wording?
	next		= "Show timer for next $spell:%s",
	nextcount	= "Show timer for next $spell:%s",
	nextsource	= "Show timer (with source) for next $spell:%s",--Maybe better wording?
	achievement	= "Show timer for %s"
}


VEM_CORE_AUTO_ICONS_OPTION_TEXT			= "Set icons on $spell:%s targets"
VEM_CORE_AUTO_ICONS_OPTION_TEXT2		= "Set icons on $spell:%s"
VEM_CORE_AUTO_ARROW_OPTION_TEXT			= "Show VEM Arrow to move toward target affected by $spell:%s"
VEM_CORE_AUTO_ARROW_OPTION_TEXT2		= "Show VEM Arrow to move away from target affected by $spell:%s"
VEM_CORE_AUTO_SOUND_OPTION_TEXT			= "Play \"run away\" sound for $spell:%s"
VEM_CORE_AUTO_COUNTDOWN_OPTION_TEXT		= "Play countdown sound for $spell:%s cooldown"
VEM_CORE_AUTO_COUNTDOWN_OPTION_TEXT2	= "Play countdown sound for when $spell:%s fades"
VEM_CORE_AUTO_COUNTOUT_OPTION_TEXT		= "Play countout sound for $spell:%s duration"
VEM_CORE_AUTO_YELL_OPTION_TEXT			= "Yell when you are affected by $spell:%s"
VEM_CORE_AUTO_YELL_ANNOUNCE_TEXT		= "%s on " .. UnitName("player") .. "!"
VEM_CORE_AUTO_RANGE_OPTION_TEXT			= "Show range frame (%s) for $spell:%s"--string used for range so we can use things like "5/2" as a value for that field
VEM_CORE_AUTO_RANGE_OPTION_TEXT_SHORT	= "Show range frame (%s)"--For when a range frame is just used for more than one thing
VEM_CORE_AUTO_INFO_FRAME_OPTION_TEXT	= "Show info frame for $spell:%s"
VEM_CORE_AUTO_READY_CHECK_OPTION_TEXT	= "Play ready check sound when boss is pulled (even if it's not targeted)"

-- New special warnings
VEM_CORE_MOVE_SPECIAL_WARNING_BAR	= "Special warning movable"
VEM_CORE_MOVE_SPECIAL_WARNING_TEXT	= "Special Warning"


VEM_CORE_RANGE_CHECK_ZONE_UNSUPPORTED	= "A %d yard range check is not supported in this zone.\nSupported ranges are 10, 11, 15 and 28 yard."

VEM_ARROW_MOVABLE					= "Arrow movable"
VEM_ARROW_NO_RAIDGROUP				= "This function only works in raid groups and within raid instances."
VEM_ARROW_ERROR_USAGE	= {
	"VEM-Arrow usage:",
	"/vem arrow <x> <y>  creates an arrow that points to a specific location (using world coordinates)",
	"/vem arrow map <x> <y>  creates an arrow that points to a specific location (using zone map coordinates)",
	"/vem arrow <player>  creates and arrow that points to a specific player in your party or raid (case sensitive!)",
	"/vem arrow hide  hides the arrow",
	"/vem arrow move  makes the arrow movable"
}

VEM_SPEED_KILL_TIMER_TEXT	= "Record Victory"
VEM_SPEED_KILL_TIMER_OPTION	= "Show a timer to beat your fastest victory"
VEM_SPEED_CLEAR_TIMER_TEXT	= "Best Clear"
VEM_COMBAT_RES_TIMER_TEXT	= "Next CR Charge"


VEM_REQ_INSTANCE_ID_PERMISSION		= "%s requested to see your current instance IDs and progress.\nDo you want to send this information to %s? He or she will be able to request this information during your current session (i. e. until you relog)."
VEM_ERROR_NO_RAID					= "You need to be in a raid group to use this feature."
VEM_INSTANCE_INFO_REQUESTED			= "Sent request for raid lockout information to the raid group.\nPlease note that the users will be asked for permission before sending the data to you, so it might take a minute until we get all responses."
VEM_INSTANCE_INFO_STATUS_UPDATE		= "Got responses from %d players of %d VEM users: %d sent data, %d denied the request. Waiting %d more seconds for responses..."
VEM_INSTANCE_INFO_ALL_RESPONSES		= "Received responses from all raid members"
VEM_INSTANCE_INFO_DETAIL_DEBUG		= "Sender: %s ResultType: %s InstanceName: %s InstanceID: %s Difficulty: %d Size: %d Progress: %s"
VEM_INSTANCE_INFO_DETAIL_HEADER		= "%s (%d), difficulty %d:"
VEM_INSTANCE_INFO_DETAIL_INSTANCE	= "    ID %s, progress %d: %s"
VEM_INSTANCE_INFO_STATS_DENIED		= "Denied the request: %s"
VEM_INSTANCE_INFO_STATS_AWAY		= "Away: %s"
VEM_INSTANCE_INFO_STATS_NO_RESPONSE	= "No recent VEM version installed: %s"
VEM_INSTANCE_INFO_RESULTS			= "Instance ID scan results. Note that instances might show up more than once if there are players with localized WoW clients in your raid."
VEM_INSTANCE_INFO_SHOW_RESULTS		= "Players yet to respond: %s\n|HVEM:showRaidIdResults|h|cff3588ff[Show results now]|r|h"

VEM_CORE_LAG_CHECKING				= "Checking raid Latency..."
VEM_CORE_LAG_HEADER					= "Voice Encounter Mods - Latency Results"
VEM_CORE_LAG_ENTRY					= "%s: World delay [%d ms] / Home delay [%d ms]"
VEM_CORE_LAG_FOOTER					= "No Response: %s"



VEM_CORE_SOUND_NOFILE		 		= "Voice File not found"
VEM_CORE_SOUND_NOFILEUSAGE		 	= "    VEM failed to find any voice packs. Please check if you've correctly installed the voice packs and make sure they are enabled in your addons' list."
VEM_CORE_SOUND_UNNAME		 		= "Custom Voice"
VEM_CORE_SOUND_UNUSAGE		 		= "    This is a custom voice pack, but the author is too lazy to leave any details here."