-- Español por www.roxathatecuenta.es, contacto roxathatecuenta@gmail.com
-- Last update: 02/14/2014

if GetLocale() ~= "esES" then return end

local L = VEM_GUI_Translations

L.MainFrame = "Voice Encounter Mods"

L.TranslationByPrefix		= "Traducido por "
L.TranslationBy 			= "www.roxathatecuenta.es"
L.Website					= "Visita nuestra version inglesa en la pagina del proyecto |cFF73C2FBhttps://github.com/henryj/Voice-Encounter-Mods|r"
L.WebsiteButton				= "Github"
L.SoundMM					= "Voice Actor"

L.OTabBosses	= "Bosses"
L.OTabOptions	= "Opciones"

L.Checkinstance				= "Comprobar estancia"
L.Checkver					= "Comprobar version"

L.TabCategory_Options	 	= "Opciones Generales"
L.TabCategory_MOP	 		= "Mists of Pandaria"
L.TabCategory_CATA	 		= "Cataclysm"
L.TabCategory_WOTLK 		= "Wrath of the Lich King"
L.TabCategory_BC 			= "The Burning Crusade"
L.TabCategory_CLASSIC		= "WoW Classic"
L.TabCategory_PVP 			= "PvP"
L.TabCategory_OTHER    		= "Otros Boss Mods"

L.BossModLoaded 			= "%s statistics"
L.BossModLoad_now 			= [[Este Boss Mod no esta cargado. 
Será cargado cuando entres en la estancia. 
Puedes hacer click en el botom para cargarlo manualmente.]]

L.PosX						= 'Posicion X'
L.PosY						= 'Posicion Y'

L.MoveMe 					= 'Mueveme'
L.Button_OK 				= 'OK'
L.Button_Cancel 			= 'Cancelar'
L.Button_LoadMod 			= 'Cargar AddOn'
L.Mod_Enabled				= "Activar boss mod"
L.Mod_Reset					= "Cargar opciones por defecto"
L.Reset 					= "Resetear"

L.Enable  					= "Activar"
L.Disable					= "Desactivar"

L.NoSound					= "Sin Sonido"

L.IconsInUse				= "Iconos utilizados para este encuentro"

-- Tab: Boss Statistics
L.BossStatistics			= "Estadisticas del Boss"
L.Statistic_Kills			= "Victorias:"
L.Statistic_Wipes			= "Muertes:"
L.Statistic_Incompletes		= "No Completados:"--For scenarios, TODO, figure out a clean way to replace any Statistic_Wipes with Statistic_Incompletes for scenario mods
L.Statistic_BestKill		= "Mejor tiempo de victoria:"

-- Tab: General Core Options
L.General 					= "Opciones generales del VEM Core"
L.EnableVEM 				= "Activar VEM"
L.EnableMiniMapIcon			= "Mostrar icono en el minimapa"
L.SetPlayerRole				= "Selecionar rol de los jugadores automaticamente (Recomendado Activado)"
L.UseMasterVolume			= "Usar Canal maestro de audio para reporoducir los sonidos de VEM"
L.LFDEnhance				= "Reproducir un sonido de listos para readycheck &amp; BG/LFG Propuesto en el canal de audio Maestro"
L.AutologBosses				= "Automaticamente guardar los record de los jefes usando el log del combate de Blizzard"
L.AdvancedAutologBosses		= "Automaticamente guarda los record de los encuentros con los jefes con el Transcriptor"
L.LogOnlyRaidBosses			= "Solamente los record de raid de los encuentros (Excluye Buscador de bandas/ Banda Flexible)"
L.Latency_Text				= "Asigna el umbral de sincronizacion de latencia maxima: %d"
-- Tab: General Timer Options
L.TimerGeneral 				= "Opciones generales de los tiempos VEM"
L.SKT_Enabled				= "Siempre muestra el tiempo de muerte mas rapido (Puedes anularlo manualmente para cada boss)"
L.ChallengeTimerOptions		= "Ajusta la opcion para los mejores tiempos del modo desafio"
L.ChallengeTimerPersonal	= "Personal"
L.ChallengeTimerGuild		= "Guild"
L.ChallengeTimerRealm		= "Reino"

L.ModelOptions				= "Opciones del modelo 3D"
L.EnableModels				= "Activar modelo 3D en las opciones del jefe"
L.ModelSoundOptions			= "Establezca la opción de sonido para el modelo de visualización"
L.ModelSoundShort			= "Corto"
L.ModelSoundLong			= "Largo"

L.Button_RangeFrame			= "Muestra/Oculta el marco de rango"
L.Button_RangeRadar			= "Muestra/Oculta el marco de radar"
L.Button_InfoFrame			= "Muestra/Oculta el marco de informacion"
L.Button_TestBars			= "Comenzar test de barras"

L.PizzaTimer_Headline 		= 'Crear un "Pizza Timer"'
L.PizzaTimer_Title			= 'Nombre (e.g. "Pizza!")'
L.PizzaTimer_Hours 			= "Horas"
L.PizzaTimer_Mins 			= "Min"
L.PizzaTimer_Secs 			= "Sec"
L.PizzaTimer_ButtonStart 	= "Comenzar tiempo"
L.PizzaTimer_BroadCast		= "Difundir a la raid"

-- Tab: Raidwarning
L.Tab_RaidWarning 			= "Alertas de Raid"
L.RaidWarning_Header		= "Opciones de alertas de Raid"
L.RaidWarnColors 			= "Colores de las alertas de Raid"
L.RaidWarnColor_1 			= "Color 1"
L.RaidWarnColor_2 			= "Color 2"
L.RaidWarnColor_3		 	= "Color 3"
L.RaidWarnColor_4 			= "Color 4"
L.InfoRaidWarning			= [[Puedes especificar la posición y los colores del marco de la advertencia raid. . 
Este marco se utiliza para mensajes como "jugador X se ve afectada por Y".]]
L.ColorResetted 			= "Los ajustes de color de este campo se han restablecido."
L.ShowWarningsInChat 		= "Mostrar alertas en el marco del chat"
L.ShowChatTime			 	= "Añadir el tiempo en las alertas del chat"
L.ShowFakedRaidWarnings 	= "Mostrar alertas como un mensaje falso en las alertas de raid"
L.WarningIconLeft 			= "Mostrar un icono a la izquierda"
L.WarningIconRight 			= "Mostrar un icono a la derecha"
L.WarningIconChat 			= "Mostrar un icono en el marco del chat"
L.ShowCountdownText			= "Mostrar un texto de cuenta atras"
L.RaidWarnMessage 			= "Gracias por usar Voice Encounter Mods"
L.BarWhileMove 				= "Alerta de raid movible"
L.RaidWarnSound				= "Reproducir un sonido en alertas de raid"
L.CountdownVoice			= "Seleccionar voz"
L.SpecialWarnSound			= "Seleccionar un sonido especial para las alertas de raid que te estan afectando o afectan a tu rol especifico"
L.SpecialWarnSound2			= "Seleccionar un sonido especial para las alertas de raid que esten afectando a cualquiera"
L.SpecialWarnSound3			= "Seleccionar un sonido para cada alerta especial importante"

-- Tab: Generalwarnings
L.Tab_GeneralMessages 		= "Mensajes generales"
L.CoreMessages				= "Opciones de mensajes básicos"
L.ShowLoadMessage 			= "Mostrar mensajes de carga del Mod en marco del chat"
L.ShowPizzaMessage 			= "Mostrar temporizador en el marco del chat"
L.CombatMessages			= "Opciones de los mensajes del combate"
L.ShowEngageMessage 		= "Mostrar mensajes de intentos en el marco del chat"
L.ShowKillMessage 			= "Mostrar mensajes de victorias en marco del chat"
L.ShowWipeMessage 			= "Mostrar mensajes de muertes en marco del chat"
L.ShowRecoveryMessage 		= "Mostrar mensajes de recuperacion de temporizadores en el marco del chat"
L.WhisperMessages			= "Susurrar opciones de mensajes"
L.AutoRespond 				= "Auto-responder con un susurro mientras estas luchando"
L.EnableStatus 				= "Responder a susurros con la palabra 'status'"
L.WhisperStats 				= "Incluir estadisticas de Victorias/Muertes en el susurro"

-- Tab: Barsetup
L.BarSetup   				= "Estilo de barra"
L.BarTexture 				= "Textura de barra"
L.BarStartColor				= "Color de inicio"
L.BarEndColor 				= "Color final"
L.ExpandUpwards				= "Expandir barras hacia arriba"
L.Bar_Font					= "Fuente utilizada para las barras"
L.Bar_FontSize				= "Tamaño de la fuente"
L.Slider_BarOffSetX 		= "Offset X: %d"
L.Slider_BarOffSetY 		= "Offset Y: %d"
L.Slider_BarWidth 			= "Ancho de la barra: %d"
L.Slider_BarScale 			= "Escala de la barra: %0.2f"
L.AreaTitle_BarSetup		= "Opciones generales de las barras"
L.AreaTitle_BarSetupSmall 	= "Opciones de las barras pequeñas"
L.AreaTitle_BarSetupHuge	= "Opciones de las barras grandes"
L.BarIconLeft 				= "Icono izquierdo"
L.BarIconRight 				= "Icono derecho"
L.EnableHugeBar 			= "Activar barras grandes (aka Bar 2)"
L.FillUpBars				= "Llenar las barras"
L.ClickThrough				= "Desactivar eventos del raton (Permite clickear a traves de las barras)"
-- Tab: Spec Warn Frame
L.Panel_SpecWarnFrame		= "Alertas especiales"
L.Area_SpecWarn				= "Opciones de las alertas especiales"
L.SpecWarn_Enabled			= "Mostrar alertas especiales para las habilidades de los jefes"
L.SpecWarn_FlashFrame		= "Mostrar un flash en la pantalla para las alertas especiales"
L.SpecWarn_ShakeFrame		= "Mostrar una vibración en la pantalla para la devastacion"
L.SpecWarn_AdSound			= "Activar opciones de sonido avanzas para las alertas especiales (Rquiere un reload de UI)"
L.SpecWarn_Font				= "Fuente utilizada para las alertas especiales"
L.SpecWarn_FontSize			= "Tamaño de la fuente: %d"
L.SpecWarn_FontColor		= "Color de la fuente"
L.SpecWarn_FontType			= "Seleccionar fuente"
L.SpecWarn_FlashColor		= "Color del flash (%d)"
L.SpecWarn_FlashDur			= "Duracion del flash: %0.1f"
L.SpecWarn_FlashAlpha		= "Flash alpha: %0.1f"
L.SpecWarn_DemoButton		= "Mostrar un ejemplo"
L.SpecWarn_MoveMe			= "Seleccionar posicion"
L.SpecWarn_ResetMe			= "Reiniciar las opciones a por defecto"
L.Panel_LTSpecWarnFrame		= "Alertas especiales a largo plazo"
L.Area_LTSpecWarn			= "Opciones de alertas especiales a largo plazo"
L.LTSpecWarn_Enabled		= "Show Long-term special warnings"
L.LTSpecWarn_Font			= "Fuentes usadas para alertas especiales a largo plazo"
L.TestWarningEnd			= "Los ejemplos duran solo cinco segundos pero las verdaderas alertas a largo plazo duraran en tu pantalla hasta que el evento se cancele"
-- Tab: HealthFrame
L.Panel_HPFrame				= "Cuadro de salud"
L.Area_HPFrame				= "Opciones del cuadro de salud"
L.HP_Enabled				= "Mostrar siempre el cuadro de salud (Puedes anularlo manualmente para cada boss)"
L.HP_GrowUpwards			= "Expandir el marco de la salud hacia arriba"
L.HP_ShowDemo				= "Mostrar marco de vida"
L.BarWidth					= "Ancho de la barra: %d"

-- Tab: Spam Filter
L.Panel_SpamFilter				= "Filtros globales y spam"
L.Area_SpamFilter				= "Opciones de los filtros de spam"
L.StripServerName				= "Quita el nombre del reino en las alertas y tiempos"
L.SpamBlockBossWhispers			= "Filtra &lt;VEM&gt; alertas por susurro mientras estas en combate"
L.BlockVersionUpdateNotice		= "Desactivar la actualización notificación emergente (No recomendado)"
L.ShowBigBrotherOnCombatStart	= "Realizar comprobacion de bufos con Big Brother al empezar el combate"
L.BigBrotherAnnounceToRaid		= "Anuncia el resultado del Big Brother a la raid"

L.Area_SpamFilter_Outgoing		= "Opciones de filtros globales"
L.SpamBlockNoShowAnnounce		= "No volver a mostrar anuncia o reproducir sonidos de alerta"
L.SpamBlockNoSendWhisper		= "No enviar susurros a otros jugadores"
L.SpamBlockNoSetIcon			= "No coloque los iconos en objetivos"
L.SpamBlockNoRangeFrame			= "No muestre marco de rango"
L.SpamBlockNoInfoFrame			= "No muestre marco de informacion"

L.Area_PullTimer				= "Opciones del filtro del temporalizador de pull"
L.DontShowPTNoID				= "Bloquear temporalizador de pull que no se envien en la misma zona que tu"
L.DontShowPT					= "No mostrar barra del temporalizador de pull"
L.DontShowPTText				= "No mostrar texto para el temporalizador del pull"
L.DontPlayPTCountdown			= "No reproducir sonidos del tiempo de pull/combate"
L.DontShowPTCountdownText		= "No mostrar texto del tiempo de pull/combate"
L.PT_Threshold					= "No mostrar texto del tiempo de pull/combate encima de: %d"

L.Panel_HideBlizzard			= "Ocultar Blizzard"
L.Area_HideBlizzard				= "Opciones para ocultar Blizzard"
L.HideBossEmoteFrame			= "Oculta el marco del jefe durante la pelea"
L.HideWatchFrame				= "Ocultar los marcos de objetivos durante la pelea"
L.SpamBlockSayYell				= "Ocultar los anuncion del marco del chat"
L.DisableCinematics				= "Oculta cinematicas del juego"
L.AfterFirst					= "Despues de reproducirlo una vez"
L.Always						= "Siempre"

-- Misc
L.FontHeight	= 16