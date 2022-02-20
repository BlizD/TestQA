﻿#language: ru

@tree

Функционал: Проверка использование переменных

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка использование локальных переменных
* Пример локальной переменной
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/data/Document.PurchaseInvoice?ref=a50500d861d86d4e11ec8967eb1ed090"
	И я запоминаю текущее окно как "ЗаголовокОкнаПоступленияТоваров"
	И я вывожу значение переменной "ЗаголовокОкнаПоступленияТоваров"
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1001 Закупки'
	И я нажимаю на кнопку с именем 'GenerateReport'
	//И в табличном документе 'ResultTable' я перехожу к ячейке "R9C3"
	Тогда табличный документ "ResultTable" равен:
		| '$ЗаголовокОкнаПоступленияТоваров$' | ''                   | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                        | ''                        | ''                                     | ''                  |
		| 'Движения документа по регистрам'                         | ''                   | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                        | ''                        | ''                                     | ''                  |
		| 'Регистр  "R1001 Закупки"'                                | ''                   | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                        | ''                        | ''                                     | ''                  |
		| ''                                                        | 'Period'             | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                        | ''                        | ''                                     | 'Attributes'        |
		| ''                                                        | ''                   | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                                  | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
		| ''                                                        | '09.02.2022 8:56:45' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 002 от 09.02.2022 8:56:45' | 'Услуга'                  | '73c1f948-c426-4a12-ae6c-43f1c1261cca' | 'Да'                |
		| ''                                                        | '09.02.2022 8:56:45' | '1'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 002 от 09.02.2022 8:56:45' | 'Услуга'                  | '73c1f948-c426-4a12-ae6c-43f1c1261cca' | 'Нет'               |
		| ''                                                        | '09.02.2022 8:56:45' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 002 от 09.02.2022 8:56:45' | 'Услуга'                  | '73c1f948-c426-4a12-ae6c-43f1c1261cca' | 'Нет'               |
		| ''                                                        | '09.02.2022 8:56:45' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 002 от 09.02.2022 8:56:45' | 'Услуга'                  | '73c1f948-c426-4a12-ae6c-43f1c1261cca' | 'Нет'               |
		| ''                                                        | '09.02.2022 8:56:45' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 002 от 09.02.2022 8:56:45' | 'Услуга'                  | '73c1f948-c426-4a12-ae6c-43f1c1261cca' | 'Нет'               |
		| ''                                                        | '09.02.2022 8:56:45' | '2'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 002 от 09.02.2022 8:56:45' | 'Товар без характеристик' | 'ddcb95af-5f92-4dbc-968c-98efdb91087d' | 'Да'                |
		| ''                                                        | '09.02.2022 8:56:45' | '2'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 002 от 09.02.2022 8:56:45' | 'Товар без характеристик' | 'ddcb95af-5f92-4dbc-968c-98efdb91087d' | 'Нет'               |
		| ''                                                        | '09.02.2022 8:56:45' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 002 от 09.02.2022 8:56:45' | 'Товар без характеристик' | 'ddcb95af-5f92-4dbc-968c-98efdb91087d' | 'Нет'               |
		| ''                                                        | '09.02.2022 8:56:45' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 002 от 09.02.2022 8:56:45' | 'Товар без характеристик' | 'ddcb95af-5f92-4dbc-968c-98efdb91087d' | 'Нет'               |
		| ''                                                        | '09.02.2022 8:56:45' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 002 от 09.02.2022 8:56:45' | 'Товар без характеристик' | 'ddcb95af-5f92-4dbc-968c-98efdb91087d' | 'Нет'               |
	
			

Сценарий: Проверка использование глобальных переменных	
* Пример глобальной переменной
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/data/Catalog.Items?ref=b762b13668d0905011eb766bf96b2750"
	И я удаляю переменную '$$СсылкаТоварБезХарактеристик$$'
	И я сохраняю навигационную ссылку текущего окна в переменную "$$СсылкаТоварБезХарактеристик$$"
	//И я сохраняю навигационную ссылку текущего окна в переменную "$$$$СсылкаТоварБезХарактеристик$$$$"
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$$СсылкаТоварБезХарактеристик$$"
	//И я удаляю переменную '$$СсылкаТоварБезХарактеристик$$'
	