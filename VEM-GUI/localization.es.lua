-- Espa隳l por www.roxathatecuenta.es, contacto roxathatecuenta@gmail.com
-- Last update: 02/14/2014

if GetLocale() ~= "esES" then return end

if not VEM_GUI_Translations then VEM_GUI_Translations = {} end
local L = VEM_GUI_Translations

L.MainFrame = "Voice Encounter Mods - Espa?ol"

L.TranslationByPrefix		= "Traducido por "
L.TranslationBy 			= "www.roxathatecuenta.es"
L.Website					= "Visita nuestra version inglesa en la pagina del proyecto |cFF73C2FBhttps://github.com/henryj/Voice-Encounter-Mods|r"
L.WebsiteButton				= "Github"

L.OTabBosses	= "Jefes"
L.OTabOptions	= "Opciones"

L.Checkinstance				= "Comprobar estancia"
L.Checkver					= "Comprobar version"

L.TabCategory_Options	 	= "Opciones Generales"
L.TabCategory_MOP	 		= "Mists of Pandaria"
L.TabCategory_CATA	 		= "Cataclysm"
L.TabCategory_WOTLK 	= "Wrath of the Lich King"
L.TabCategory_BC 	= "The Burning Crusade"
L.TabCategory_CLASSIC 	= "WoW Classic Bosses"
L.TabCategory_PVP	= "PvP"
L.TabCategory_OTHER     = "Otros Boss Mods"

L.BossModLoaded 	= "%s estad赤sticas"
L.BossModLoad_now 	= [[Este modulo no esta cargado. 
Si no se carga al entrar en la estancia. 
Puedes pulsar en el boton para cargar el modulo manualmente.]]

L.PosX = 'Posici車n X'
L.PosY = 'Posici車n Y'

L.MoveMe 		= '?Mu谷veme!'
L.Button_OK 		= 'Aceptar'
L.Button_Cancel 	= 'Cancelar'
L.Button_LoadMod 	= 'Cargar M車dulo'
L.Mod_Enabled		= "Habilitar modulo de este boss"
L.Mod_Reset		= "Cargar opciones por defecto"
L.Reset 		= "resetear"

L.Enable  		= "Habilitar"
L.Disable		= "Desabilitar"

L.NoSound		= "Sin sonido"

L.IconsInUse	= "Iconos usados por este mod"

-- Tab: Boss Statistics
L.BossStatistics	= "Estad赤sticas de Boss"
L.Statistic_Kills	= "Muertes:"
L.Statistic_Wipes	= "Wipes:"
L.Statistic_Incompletes		= "Incompletos:"--For scenarios, TODO, figure out a clean way to replace any Statistic_Wipes with Statistic_Incompletes for scenario mods
L.Statistic_BestKill	= "Mejor muerte:"

-- Tab: General Core Options
L.General 		= "Opciones de VEM"
L.EnableVEM 		= "Habilitar VEM"
L.EnableMiniMapIcon	= "Mostrar icono de VEM en el mapa"
L.UseMasterVolume			= "Usar el canal de audio principal para reproducir alertas sonoras del VEM."
L.LFDEnhance				= "Reproducir sonido de 'listos' para comprobaciones de funci車n, BG y LFR, en el canal de audio principal"
L.AutologBosses				= "Grabar encuentros autom芍ticamente al registro de combate."
L.AdvancedAutologBosses		= "Grabar encuentros autom芍ticamente al registro de combato mediante Transcriptor."
L.LogOnlyRaidBosses			= "Solo grabar encuentros de banda (excluyendo LFR/escenarios)."
L.Latency_Text				= "Latencia m芍x. sincronizaci車n: %d"
-- Tab: General Timer Options
L.TimerGeneral 				= "Opciones generales de los temporizadores"
L.SKT_Enabled			= "Mostrar siempre el contador para superar r谷cord de tiempo (Sobreescribe la opci車n de bosses espec赤ficos)"
L.ChallengeTimerOptions		= "Temporizador para mejor tiempo en modos desaaf赤o."
L.ChallengeTimerPersonal	= "Personal"
L.ChallengeTimerGuild		= "Hermandad"
L.ChallengeTimerRealm		= "Reino"

L.ModelOptions				= "Opciones del Visor de Modelos 3D"
L.EnableModels				= "Activar modelos 3D en las opciones de los jefes"
L.ModelSoundOptions			= "Asignar la opci車n de sonido para el Visor de Modelos"
L.ModelSoundShort			= "Corto"
L.ModelSoundLong			= "Largo"

L.Button_RangeFrame			= "Mostrar/Ocultar cuadro de rango"
L.Button_RangeRadar			= "Mostrar/Ocultar radar de rango"
L.Button_InfoFrame			= "Mostrar/Ocultar cuadro de informaci車n"
L.Button_TestBars			= "Probar barras"

L.PizzaTimer_Headline 	= 'Crear "Cron車mentro"'
L.PizzaTimer_Title	= 'Nombre (ej. "Pizza!")'
L.PizzaTimer_Hours 	= "Horas"
L.PizzaTimer_Mins 	= "Min"
L.PizzaTimer_Secs 	= "Seg"
L.PizzaTimer_ButtonStart = "Iniciar"
L.PizzaTimer_BroadCast	= "Anunciar a Banda"

-- Tab: Raidwarning
L.Tab_RaidWarning 	= "Avisos a banda"
L.RaidWarning_Header= "Opciones de aviso de banda"
L.RaidWarnColors 	= "Colores de avisos a banda"
L.RaidWarnColor_1 	= "Color 1"
L.RaidWarnColor_2 	= "Color 2"
L.RaidWarnColor_3 	= "Color 3"
L.RaidWarnColor_4 	= "Color 4"
L.InfoRaidWarning	= [[Puedes especificar posici車n y colores del cuadro de aviso de banda. 
Este marco se usa en mensajes como "El jugador X est芍 afectado por Y"]]
L.ColorResetted 	= "Los ajustes de color de este campo se han reiniciado"
L.ShowWarningsInChat 	= "Mostrar avisos en el chat"
L.ShowSWarningsInChat 	= "Mostrar avisos especiales en el chat"
L.ShowFakedRaidWarnings = "Mostrar avisos en el chat de banda"
L.WarningIconLeft 	= "Mostrar icono en el lado izquierdo"
L.WarningIconRight 	= "Mostrar icono en el lado derecho"
L.WarningIconChat 	= "Mostrar iconos en el chat"
L.ShowCountdownText	= "Mostrar text de cuenta atr芍s"
L.RaidWarnMessage 	= "Gracias por usar Voice Encounter Mods - Espa?ol"
L.BarWhileMove 		= "Avisos de banda se pueden mover"
L.RaidWarnSound		= "Reproducir sonido para aviso-banda"
L.CountdownVoice			= "Seleccionar voz"
L.CountdownVoice2	= "Fijar voz secundaria para sonido de cuenta atr芍s"
L.SpecialWarnSound	= "Fijar sonido para avisos especiales que te afecten a ti o a tu rol"
L.SpecialWarnSound2	= "Fijar sonido para avisos especiales que afectan a todos"
L.SpecialWarnSound3	= "Fijar sonido para avisos especiales MUY IMPORTANTES"

-- Tab: Generalwarnings
L.Tab_GeneralMessages 	= "Mensajes generales"
L.CoreMessages			= "Opciones de mensajes del n迆cleo"
L.ShowLoadMessage 		= "Mostrar mensajes de carga de mods en la ventana de chat"
L.ShowPizzaMessage 		= "Mostrar mensajes de transmisi車n de tiempo en la ventana de chat"
L.ShowCombatLogMessage 		= "Mostrar mensajes del guardado del combat log en el chat"
L.ShowTranscriptorMessage	= "Mostrar mensajes del guardado del Transcriptor log en el chat"
L.CombatMessages		= "Opciones de mensajes de combate"
L.ShowEngageMessage 	= "Mostrar mensajes al empezar un combate en la ventana de chat"
L.ShowKillMessage 		= "Mostrar mensajes de derrota en la ventana de chat"
L.ShowWipeMessage 		= "Mostrar mensajes de wipe en la ventana de chat"
L.ShowRecoveryMessage	= "Mostrar mensajes de calibraci車n de tiempos en la ventana de chat"
L.WhisperMessages		= "Opciones de mensajes de susurro"
L.AutoRespond 			= "Habilitar auto-responder si estas en un Boss"
L.EnableStatus 			= "Responder 'estado' a los que te susurren en banda"
L.WhisperStats 			= "Incluir las veces que se ha derrotado/wipeado en un boss a la respuestas de susurro"

-- Tab: Barsetup
L.BarSetup			= "Configuraci車n de barra"
L.BarTexture			= "Textura de barra"
L.BarStyle			= "Estilo de barra"
L.BarVEM			= "VEM"
L.BarBigWigs			= "BigWigs (sin animaci車n)"
L.BarStartColor			= "Color de inicio"
L.BarEndColor			= "Color de fin"
L.Bar_Font			= "Fuente de las barras"
L.Bar_FontSize			= "Tama?o de la fuente"
L.Bar_Height			= "Altura de barra: %d"
L.Slider_BarOffSetX 	= "Desplazamiento X: %d"
L.Slider_BarOffSetY 	= "Desplazamiento Y: %d"
L.Slider_BarWidth 	= "Ancho de barra: %d"
L.Slider_BarScale 	= "Escala de barra: %0.2f"
L.AreaTitle_BarSetup 	= "Opciones de Barras"
L.AreaTitle_BarSetupSmall = "Barra de la derecha"
L.AreaTitle_BarSetupHuge = "Barra del medio"
L.EnableHugeBar 	= "Habilitar barra del medio"
L.BarIconLeft 		= "Icono izq."
L.BarIconRight 		= "Icono der."
L.ExpandUpwards		= "Expandir barras hacia arriba"
L.FillUpBars		= "Ll谷nese Barras"
L.ClickThrough		= "Desabilitar acciones de rat車n (si pulsas en las barras)"
L.Bar_EnlargeTime			= "Transici車n de barra cuando < %d sec."
L.Bar_EnlargePercent		= "Transici車n de barra en: %0.1f%%"
L.BarSpark					= "Brillo de barra"
L.BarFlash					= "Parpadear barras apunto de expirar"

-- Tab: Spec Warn Frame
L.Panel_SpecWarnFrame		= "Avisos Especiales"
L.Area_SpecWarn				= "Opciones de Avisos Especiales"
L.SpecWarn_Enabled			= "Mostrar Avisos Especiales para habilidades de jefes"
L.SpecWarn_FlashFrame		= "Mostrar un flash de pantalla para avisos especiales"
L.SpecWarn_ShakeFrame		= "Mostrar una vibraci鏮 en la pantalla para la devastacion"
L.SpecWarn_AdSound		= "Habilitar opciones avanzadas de sonido para avisos especiales (requiere recargar UI)"
L.SpecWarn_Font				= "Fuente usada para avisos especiales"
L.SpecWarn_FontSize			= "Tama?o de fuente: %d"
L.SpecWarn_FontColor		= "Fuente"
L.SpecWarn_FontType			= "Elegir fuente"
L.SpecWarn_FlashColor		= "Parpadeo"
L.SpecWarn_FlashDur		= "Duraci車n del parpadeo: %0.1f"
L.SpecWarn_FlashAlpha		= "Alpha del parpadeo: %0.1f"
L.SpecWarn_DemoButton		= "Ver ejemplo"
L.SpecWarn_MoveMe			= "Definir posici車n"
L.SpecWarn_ResetMe			= "Reiniciar con los valores por defecto"
L.Panel_LTSpecWarnFrame		= "Alertas especiales a largo plazo"
L.Area_LTSpecWarn			= "Opciones de alertas especiales a largo plazo"
L.LTSpecWarn_Enabled		= "Show Long-term special warnings"
L.LTSpecWarn_Font			= "Fuentes usadas para alertas especiales a largo plazo"
L.TestWarningEnd			= "Los ejemplos duran solo cinco segundos pero las verdaderas alertas a largo plazo duraran en tu pantalla hasta que el evento se cancele"

-- Tab: HealthFrame
L.Panel_HPFrame				= "Barra de vida"
L.Area_HPFrame				= "Opciones de la barra de vida"
L.HP_Enabled				= "Siempre ver la barra de vida (Sobreescribe la opci車n de bosses espec赤ficos)"
L.HP_GrowUpwards			= "Mover la barra de vida arriba"
L.HP_ShowDemo				= "Ver barra de vida"
L.BarWidth					= "Ancho de la barra: %d"

-- Tab: Spam Filter
L.Panel_SpamFilter		= "Filtro de Spam"
L.Area_SpamFilter		= "Opciones de spam"
L.StripServerName		= "Eliminar nombre de reino de los avisos y temporizadores"
L.SpamBlockBossWhispers		= "Filtrar los avisos de &lt;VEM&gt; mientras estas en combate"
L.BlockVersionUpdateNotice	= "Desabilitar avisos de actualizaciones"
L.ShowBBOnCombatStart			= "Comprobar los bufos con Big Brother al inicio del combate"
L.BigBrotherAnnounceToRaid		= "Anunciar los resultados de Big Brother a la banda"

L.Area_SpamFilter_Outgoing		= "Opciones de Filtro Global"
L.SpamBlockNoShowAnnounce		= "No mostrar avisos o reproducir sonidos"
L.SpamBlockNoSendWhisper		= "No enviar susurros a otros jugadores"
L.SpamBlockNoSetIcon			= "No poner iconos en objetivos"
L.SpamBlockNoRangeFrame			= "No mostrar radar de rango"
L.SpamBlockNoInfoFrame			= "No mostrar marco de informaci車n"
L.SpamBlockNoHealthFrame		= "No mostrar barras de vida"

L.Area_PullTimer				= "Opciones de filtrado del temporizador de Pull"
L.DontShowPTNoID				= "Bloquear temporizatores de pull de 芍reas en las que no est谷s"
L.DontShowPT					= "No mostrar la barra de temporizador para el pull"
L.DontShowPTText				= "No mostrar texto de anuncio de cuenta atr芍s para el pull"
L.DontPlayPTCountdown			= "No reproducir audio de cuenta atr芍s para el pull"
L.DontShowPTCountdownText		= "No mostrar texto de cuenta atr芍s del pull"
L.PT_Threshold					= "No mostrar temporizador de pull por encima de %d segundos"

L.Panel_HideBlizzard			= "Esconder Blizzard"
L.Area_HideBlizzard				= "Opciones para esconder interfaz de Blizzard"
L.HideBossEmoteFrame			= "Esconder marco de emoci車n de los Jefes durante el combate"
L.HideWatchFrame				= "Esconder marco de objetivos durante el combate"
L.HideTooltips					= "Esconder descripciones emergentes durante el combate"
L.SpamBlockSayYell				= "Esconder texto de bocadillos del chat"
L.DisableCinematics				= "Saltar secuencias cinem芍ticas"
L.AfterFirst					= "Tras haberlas visto la primera vez"
L.Always						= "Siempre"

-- Misc
L.FontHeight	= 16