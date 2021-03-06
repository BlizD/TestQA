#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Экспорт основных данных
	Когда Экспорт основных данных

Сценарий: Изменение количества во всех строках таблицы
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/data/Document.PurchaseInvoice?ref=a50500d861d86d4e11ec8967eb1ed08d"
	И для каждой строки таблицы "ItemList" я выполняю используя колонку "N"
		И в таблице "ItemList" в поле "Количество" я ввожу текст "10,0"
		
Сценарий: Удаление строк таблицы
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/data/Document.PurchaseInvoice?ref=a50500d861d86d4e11ec8967eb1ed08d"
	И пока в таблице "ItemList" количество строк ">" 0 Тогда
		И в таблице "ItemList" я удаляю строку

//Сценарий: изменение вида цен по условиям (условие в цикле)
//	И я закрываю все окна клиентского приложения
//	И Я открываю навигационную ссылку "e1cib/data/Document.PurchaseInvoice?ref=a50a00d861d86d4e11ec9476994b4ed8"
//	И для каждой строки таблицы "ItemList" я выполняю используя колонку “N” 
//		Если таблица "ItemList" содержит строки Тогда:
//			| 'Номенклатура' | 'Характеристика' | 'Вид цены'          |
//			| 'Услуга'       | 'Услуга'         | 'Ручное назначение' |
//			И в таблице "ItemList" я перехожу к строке
//				| 'Номенклатура' | 'Характеристика' | 'Вид цены'          |
//				| 'Услуга'       | 'Услуга'         | 'Ручное назначение' |			
//			И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListPriceType"
//			И в таблице "List" я перехожу к строке:
//				| 'Валюта' | 'Код' | 'Наименование' | 'Ссылка' |
//				| 'USD'    | '2'   | 'Опт'          | 'Опт'    |
//			И в таблице "List" я выбираю текущую строку
//			И в таблице "ItemList" я завершаю редактирование строки
//	И таблица "ItemList" не содержит строки:
//		| 'Номенклатура'            | 'Характеристика'          | 'Вид цены'          |
//		| 'Услуга'                  | 'Услуга'                  | 'Ручное назначение'|

Сценарий: перебор элементов справочника номенклатура (дымовой тест открытия всех элементов справочника)
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/Catalog.Items"
	И в таблице "List" я перехожу к первой строке	
	И для каждой строки таблицы "List" я выполняю
		И в таблице "List" я выбираю текущую строку
		Тогда не появилось окно предупреждения системы
		И я закрываю текущее окно
				
//Сценарий: создание большого объема данных (справочник ед. измерения)
//	И я закрываю все окна клиентского приложения
//	И Я открываю навигационную ссылку "e1cib/list/Catalog.Units"	
//	И Я запоминаю значение выражения '1' в переменную "Шаг"
//	И я делаю 10 раз
//		И Я запоминаю значение выражения '$Шаг$+1' в переменную "Шаг"
//		И Я запоминаю значение выражения '"ед.изм.2_" + $Шаг$' в переменную "ЕдиницаИзмерения"
//		И я проверяю или создаю для справочника "Units" объекты:
//			| 'Ref'                                                                 | 'DeletionMark' | 'Code' | 'Item' | 'Quantity' | 'BasisUnit' | 'UOM' | 'Description_en'     | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
//			| '{"e1cib/data/Catalog.Units?ref=" + СтрЗаменить(Новый UUID, "-","")}' | 'False'        | 1      | ''     | 1          | ''          | ''    | '$ЕдиницаИзмерения$' | ''                 | ''               | ''               |          |          |          |          |         |

		
		
		


						
