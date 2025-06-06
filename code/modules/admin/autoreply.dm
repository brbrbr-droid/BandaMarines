GLOBAL_REFERENCE_LIST_INDEXED(adminreplies, /datum/autoreply/admin, title)
GLOBAL_REFERENCE_LIST_INDEXED(mentorreplies, /datum/autoreply/mentor, title)

/datum/autoreply
	/// What shows up in the list of replies, and the big red header on the reply itself.
	var/title = "Blank"
	/// The detailed message in the auto reply.
	var/message = "Lorem ipsum dolor sit amit."
	/// If the autoreply will automatically close the ahelp or not.
	var/closer = TRUE

/// Admin Replies
/datum/autoreply/admin/handled
	title = "В процессе решения" // SS220 - EDIT
	message = "Разработчики знают о проблеме и уже работают над её решением." // SS220 - EDIT
	closer = FALSE

/datum/autoreply/admin/icissue
	title = "РП-отыгрыш" // SS220 - EDIT
	message = "Администратор определил, что ваш вопрос соответствует РП-отыгрышу и не требует вмешательства. Попробуйте найти решение соответствующее характеру ситуации." // SS220 - EDIT

/datum/autoreply/admin/bug
	title = "L: Сообщение об ошибке" // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/admin/bug)
	message = "Пожалуйста, сообщайте обо всех ошибках в нашем <a href='[CONFIG_GET(string/githuburl)]'>Github</a> репозитории. К сожалению, большинство ошибок невозможно исправить за короткое время, за исключением критических ошибок или эксплойтов, о которых также следует сообщить через \"AdminHelp\"." // SS220 - EDIT

/datum/autoreply/admin/marine
	title = "H: Руководство для морпехов" // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/admin/marine)
	message = "На большинство ваших вопросов может ответить <a href='[CONFIG_GET(string/wikiarticleurl)]/[URL_WIKI_MARINE_QUICKSTART]'>Краткое руководство по морпехам</a>. Если что-то непонятно или у вас есть другой вопрос, пожалуйста, создайте новый тикет в \"MentorHelp\" или \"AdminHelp\"." // SS220 - EDIT

/datum/autoreply/admin/xeno
	title = "X: Руководство для ксеноморфов" // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/admin/xeno)
	message = "На большинство ваших вопросов может ответить <a href='[CONFIG_GET(string/wikiarticleurl)]/[URL_WIKI_XENO_QUICKSTART]'>Краткое руководство по ксеноморфам</a>. Если что-то непонятно или у вас есть другой вопрос, пожалуйста, создайте новый тикет в \"MentorHelp\" или \"AdminHelp\"." // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/admin/changelog) // SS220 - EDIT
	title = "C: Список изменений" // SS220 - EDIT
	message = "Ответ на ваш вопрос можно найти в списке изменений. Перейдите во вкладку \"OOC\" и выберите пункт \"Changelog\" в правом верхнем углу экрана для просмотра списка или же зайдите на наш Discord-сервер SS220 <a href='[CONFIG_GET(string/discordurl)]'>здесь</a>." // SS220 - EDIT

/datum/autoreply/admin/intended
	title = "Предусмотренный функционал" // SS220 - EDIT
	message = "Это предусмотренный функционал, поэтому в данном случае не требуется вмешательство администрации." // SS220 - EDIT

/datum/autoreply/admin/event
	title = "A: Специальное событие" // SS220 - EDIT
	message = "В настоящее время проводится специальное событие, и многие вещи могли быть изменены или удалены, однако обычные правила продолжают действовать, кроме тех, о которых сообщил администратор." // SS220 - EDIT

/datum/autoreply/admin/whitelist
	title = "L: Нарушение правил" // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/admin/whitelist)
	message = "В большинстве случаев нарушения правил не могут быть рассмотрены непосредственно в игре. Пожалуйста, сообщите об этом на нашем Discord-сервере SS220 <a href='[CONFIG_GET(string/discordurl)]'>здесь</a>." // SS220 - EDIT

/datum/autoreply/admin/clear_cache
	title = "C: Очистка кеша" // SS220 - EDIT
	message = "Чтобы очистить кэш, вам нужно нажать на значок шестерёнки, расположенной в правом верхнем углу клиента BYOND, и выбрать пункт меню \"Preferences\". В открывшемся окне перейдите во вкладку \"Game\" и нажмите кнопку \"Clear Cache\". В некоторых случаях необходимо вручную удалить кэш. Для этого перейдите во вкладку \"Advanced\" и нажмите кнопку \"Open User Directory\", затем удалите папку \"cache\"." // SS220 - EDIT
	closer = FALSE

/datum/autoreply/admin/lobby
	title = "Возврат в лобби" // SS220 - EDIT
	message = "Администрация одобрила вашу просьбу о возвращении в лобби. Для этого вы должны войти в криохранилище и стать призраком, после чего вас переместят в главное меню." // SS220 - EDIT
	closer = FALSE
////////////////////////////
/////   MENTOR HELPS   /////
////////////////////////////

/datum/autoreply/mentor/staff_issue
	title = "A: Вне компетенции" // SS220 - EDIT
	message = "Менторы, к сожалению, не смогут помочь вам в решении этого вопроса. Пожалуйста, свяжитесь с командой через \"AdminHelp\"." // SS220 - EDIT

/datum/autoreply/mentor/whitelist
	title = "L: Нарушение правил" // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/mentor/whitelist)
	message = "Менторы, к сожалению, не смогут помочь вам в решении этого вопроса. Пожалуйста, свяжитесь с администрацией через \"AdminHelp\". В большинстве случаев нарушения правил не могут быть рассмотрены непосредственно в игре, и вам, скорее всего, будет предложено написать сообщение об игроке на нашем Discord-сервере SS220 <a href='[CONFIG_GET(string/discordurl)]'>здесь</a>." // SS220 - EDIT

/datum/autoreply/mentor/event
	title = "A: Специальное событие" // SS220 - EDIT
	message = "В настоящее время проводится специальное событие, и многие вещи могли быть изменены или удалены, однако обычные правила продолжают действовать, кроме тех, о которых сообщил администратор." // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/mentor/changelog) // SS220 - EDIT
	title = "C: Список изменений" // SS220 - EDIT
	message = "Ответ на ваш вопрос можно найти в списке изменений. Перейдите во вкладку \"OOC\" и выберите пункт \"Changelog\" в правом верхнем углу экрана для просмотра списка или же зайдите на наш Discord-сервер SS220 <a href='[CONFIG_GET(string/discordurl)]'>здесь</a>." // SS220 - EDIT

/datum/autoreply/mentor/join_server
	title = "C: Подключение к игре" // SS220 - EDIT
	message = "Присоединение новых игроков в текущем раунде отключено по решению администратора или автоматически, однако вы можете наблюдать за ним перед началом следующего раунда." // SS220 - EDIT

/datum/autoreply/mentor/leave_server
	title = "C: Отключение от игры" // SS220 - EDIT
	message = "Если вам нужно покинуть игру, будучи морпехом, отправляйтесь в криохранилище или попросите кого-нибудь погрузить вас в него. Если вы ксеноморф, найдите безопасное место, нажмите на кнопку \"OOC\" и выберите пункт \"Ghost\", чтобы разблокировать тело ксеноморфа для других игроков." // SS220 - EDIT

/datum/autoreply/mentor/clear_cache
	title = "C: Очистка кеша" // SS220 - EDIT
	message = "Чтобы очистить кэш, вам нужно нажать на значок шестерёнки, расположенной в правом верхнем углу клиента BYOND, и выбрать пункт меню \"Preferences\". В открывшемся окне перейдите во вкладку \"Game\" и нажмите кнопку \"Clear Cache\". В некоторых случаях необходимо вручную удалить кэш. Для этого перейдите во вкладку \"Advanced\" и нажмите кнопку \"Open User Directory\", затем удалите папку \"cache\"." // SS220 - EDIT

/datum/autoreply/mentor/click_drag
	title = "C: Проблема с щелчком и перетаскиванием" // SS220 - EDIT
	message = "Когда вы нажимаете на кнопку мыши, BYOND иногда распознаёт это как попытку щелчка и перетаскивания, даже если кнопка была нажата всего на мгновение. Этот переключатель позволяет осуществлять клик в режиме, даже если вы удерживаете кнопку мыши нажатой, кроме случаев, когда вы пытаетесь перетащить себя, союзника или что-либо в инвентаре." // SS220 - EDIT

/datum/autoreply/mentor/discord
	title = "L: Discord"

ON_CONFIG_LOAD(/datum/autoreply/mentor/discord)
	message = "Вы можете присоединиться к нашему Discord-серверу по этой <a href='[CONFIG_GET(string/discordurl)]'>ссылке</a>!" // SS220 - EDIT

/datum/autoreply/mentor/bug
	title = "L: Сообщение об ошибке" // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/mentor/bug)
	message = "Пожалуйста, сообщайте обо всех ошибках в нашем <a href='[CONFIG_GET(string/githuburl)]'>Github</a> репозитории. К сожалению, большинство ошибок невозможно исправить за короткое время, за исключением критических ошибок или эксплойтов, о которых также следует сообщить через \"AdminHelp\"." // SS220 - EDIT

/datum/autoreply/mentor/currentmap
	title = "L: Текущая карта" // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/mentor/currentmap)
	message = "Если вам необходимо узнать информацию о текущей карте, перейдите во вкладку \"OOC\" и выберите пункт \"Current Map\". Затем откройте главную страницу <a href='[CONFIG_GET(string/wikiurl)]'>Wiki</a> и найдите статью о карте в разделе \"Карты\". Если вашей карты нет в списке, это означает, что она новая или редкая, и статья о ней ещё не опубликована." // SS220 - EDIT

/datum/autoreply/mentor/marine
	title = "H: Руководство для морпехов" // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/mentor/marine)
	message = "На большинство ваших вопросов может ответить <a href='[CONFIG_GET(string/wikiarticleurl)]/[URL_WIKI_MARINE_QUICKSTART]'>Краткое руководство по морпехам</a>. Если что-то непонятно или у вас есть другой вопрос, пожалуйста, создайте новый тикет в \"MentorHelp\" или \"AdminHelp\"." // SS220 - EDIT

/datum/autoreply/mentor/xeno
	title = "X: Руководство для ксеноморфов" // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/mentor/xeno)
	message = "На большинство ваших вопросов может ответить <a href='[CONFIG_GET(string/wikiarticleurl)]/[URL_WIKI_XENO_QUICKSTART]'>Краткое руководство по ксеноморфам</a>. Если что-то непонятно или у вас есть другой вопрос, пожалуйста, создайте новый тикет в \"MentorHelp\" или \"AdminHelp\"." // SS220 - EDIT

/datum/autoreply/mentor/macros
	title = "L: Макросы" // SS220 - EDIT

ON_CONFIG_LOAD(/datum/autoreply/mentor/macros)
	message = "Это <a href='[CONFIG_GET(string/wikiarticleurl)]/[URL_WIKI_MACROS]'>руководство</a> содержит инструкции по настройке макросов, включая примеры наиболее распространённых и полезных из них." // SS220 - EDIT

/datum/autoreply/mentor/synthkey
	title = "H: Ключ перезапуска синтетика" // SS220 - EDIT
	message = "Для возвращения к функционированию синтетиков требуется уникальный предмет под названием \"Synthetic Reboot Key\", использование которого схоже с дефибриллятором. Его может использовать любой человек с инженерными навыками, а заполучить его можно разными способами, однако в большинстве случаев синтетики носят ключ с собой." // SS220 - EDIT

/datum/autoreply/mentor/radio
	title = "H: Связь" // SS220 - EDIT
	message = "Возьмите гарнитуру в руки и активируйте её, щёлкнув по ней или нажав клавишу \"Page Down\" или \"Z\". Гарнитуры морпехов имеют доступ к каналу соответствующего отряда \":a\" (Альфа), \":b\" (Браво), \":c\" (Чарли) или \":d\" (Дельта). Гарнитуры экипажа имеют доступ к каналу Алмаера \":g\" и каналу соответствующего отдела." // SS220 - EDIT

/datum/autoreply/mentor/binos
	title = "H: Бинокль и лазерные целеуказатели" // SS220 - EDIT
	message = "Бинокль позволяет наблюдать за чем-либо на расстоянии. Чтобы воспользоваться биноклем, возьмите его в руку и активируйте, щёлкнув по нему или нажав клавишу \"Page Down\" или \"Z\". Дальномеры позволяют получить координаты плитки (долготу и широту), подсветив её ЗЕЛЁНЫМ лазером. Нажмите \"Ctrl\" + \"ЛКМ\" на плитке, чтобы получить её координаты. Нажмите \"Ctrl\" + \"ЛКМ\" на дальномере в руках, чтобы прекратить подсветку лазером без выхода из режима наблюдения. Координаты могут помочь офицерам в штабе отправить снабжение или произвести орбитальную бомбардировку. Кроме этого, вы можете использовать его для передачи координат миномётчику. Лазерные целеуказатели, кроме ЗЕЛЁНОГО, имеют второй режим (КРАСНЫЙ лазер). Для переключения между режимами нажмите \"Alt\" + \"ЛКМ\" на целеуказателе в руках или щёлкните ПКМ на нём и выберите пункт меню \"Toggle Laser Mode\". Целеуказатели имеют идентификационный номер, который будет отображаться в оружейной консоли пилота. Чтобы проверить ID своего устройства, нажмите \"Shift\" + \"ЛКМ\" на целеуказателе в руках. Важно помнить, что подсвечивать плитку красным лазером нужно столько, сколько потребуется, чтобы пилот дропшипа смог сбросить бомбы по полученным им координатам." // SS220 - EDIT

/datum/autoreply/mentor/haul
	title = "X: Захват за ксеноморфа" // SS220 - EDIT
	message = "Захват полезен для быстрой переноски недееспособных противников из одного места в другое. Чтобы захватить цель, нажмите на ней \"Ctrl\" + \"ЛКМ\", а затем кликните \"ЛКМ\" по себе. Цель может вырваться из вашего захвата, что может привести к вашей смерти, поэтому убедитесь, что ваша цель недееспособна. Кроме этого, примерно через 1 минуту цель будет автоматически освобождена из захвата. Чтобы освободить цель, примените способность \"Release\" вверху экрана."

/datum/autoreply/mentor/plasma
	title = "X: Не регенерируется плазма" // SS220 - EDIT
	message = "Если вы заметили медленную регенерацию или отсутствие плазмы, то, скорее всего, это связано с тем, что вы находитесь не на траве или используете пассивные способности, например, \"Hide\" или \"Emit Pheromones\"." // SS220 - EDIT

/datum/autoreply/mentor/tunnel
	title = "X: Туннели" // SS220 - EDIT
	message = "Нажмите \"ЛКМ\" по туннелю, чтобы войти в него. Находясь в туннеле, нажмите \"Alt\" + \"ЛКМ\", чтобы выйти из него, или \"Ctrl\" + \"ЛКМ\", чтобы выбрать пункт назначения." // SS220 - EDIT
