#language: ru
@tree
@Positive
@BranchForTest

Функционал: тестовые сценарии

Контекст:
		Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Подготовка данных

	// Справочник.AddAttributeAndPropertyValues

	И я проверяю или создаю для справочника "AddAttributeAndPropertyValues" объекты:
		| 'Ref'                                                                                   | 'DeletionMark' | 'Owner'                                                                                              | 'Code' | 'AdditionalID' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'UniqueID'                          |
		| 'e1cib/data/Catalog.AddAttributeAndPropertyValues?ref=b762b13668d0905011eb766bf96b2760' | 'False'        | 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb766bf96b275d' | 8      | ''             | 'Бренд 1'        | ''                 | ''               | ''               | '_31bf0db18f0840a5b67fc9b7f6c2df25' |

	// Справочник.Items

	И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en'           | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| 'e1cib/data/Catalog.Items?ref=b762b13668d0905011eb76684b9f687d' | 'False'        | 1      | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '58791'  | ''            | 'Товар с характеристиками' | ''                 | ''               | ''               |          |          |          | 0.21     |         |

	И я перезаполняю для объекта табличную часть "AddAttributes":
		| 'Ref'                                                           | 'Property'                                                                                           | 'Value'                                                                                 |
		| 'e1cib/data/Catalog.Items?ref=b762b13668d0905011eb76684b9f687d' | 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb766bf96b275d' | 'e1cib/data/Catalog.AddAttributeAndPropertyValues?ref=b762b13668d0905011eb766bf96b2760' |

	// Справочник.ItemTypes

	И я проверяю или создаю для справочника "ItemTypes" объекты:
		| 'Ref'                                                               | 'DeletionMark' | 'Parent' | 'IsFolder' | 'Code' | 'Type'                   | 'UseSerialLotNumber' | 'Description_en'             | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'UniqueID'                          |
		| 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'False'        | ''       | 'False'    | 1      | 'Enum.ItemTypes.Product' | 'False'              | 'Товар (есть размер и цвет)' | ''                 | ''               | ''               | '_9809d5c84df64fc48985f8c7ab28fb6b' |

	И я перезаполняю для объекта табличную часть "AvailableAttributes":
		| 'Ref'                                                               | 'Attribute'                                                                                          | 'AffectPricing' | 'Required' | 'ShowInHTML' |
		| 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb76684b9f6872' | 'True'          | 'True'     | 'False'      |
		| 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb76684b9f6877' | 'False'         | 'True'     | 'False'      |

	// Справочник.Partners

	И я проверяю или создаю для справочника "Partners" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Parent' | 'Code' | 'Customer' | 'Vendor' | 'Employee' | 'Opponent' | 'ManagerSegment' | 'Description_en'             | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | 'False'        | ''       | 3      | 'False'    | 'True'   | 'False'    | 'False'    | ''               | 'Поставщик 1 (1 соглашение)' | ''                 | ''               | ''               |

	// Справочник.Units

	И я проверяю или создаю для справочника "Units" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'Item' | 'Quantity' | 'BasisUnit' | 'UOM' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'False'        | 1      | ''     | 1          | ''          | ''    | 'шт'             | ''                 | ''               | ''               |          |          |          |          |         |

	// ПланВидовХарактеристик.AddAttributeAndProperty

	И я проверяю или создаю для плана видов характеристик "AddAttributeAndProperty" объекты:
		| 'Ref'                                                                                                | 'DeletionMark' | 'Parent' | 'IsFolder' | 'Icon'                                  | 'isIconSet' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'UniqueID'                          |
		| 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb766bf96b275d' | 'False'        | ''       | 'False'    | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'     | 'Бренд'          | ''                 | ''               | ''               | '_4355827b63dc41b8b540f65790e07f5d' |
		| 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb76684b9f6872' | 'False'        | ''       | 'False'    | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'     | 'Размер'         | ''                 | ''               | ''               | '_aa59a52a77bd48d5af340a2ff98411a9' |
		| 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb76684b9f6877' | 'False'        | ''       | 'False'    | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'     | 'Цвет'           | ''                 | ''               | ''               | '_453185245f214e42a64fd25b1daf8614' |

	Сценарий: Открытие формы списка "Items" 

	Дано Я открываю основную форму списка справочника "Items"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Items"
	И Я закрываю текущее окно

	Сценарий: Открытие формы объекта "Items"

	Дано Я открываю основную форму справочника "Items"
	Если появилось предупреждение тогда
		Тогда я вызываю исключение "Не удалось открыть форму справочника Items"
	И Я закрываю текущее окно

	Сценарий: Заполнение справочника Items
	И я закрываю все окна клиентского приложения
	* Подготовка наименования для новой номенклатуры
		И Я запоминаю значение выражения 'СтрЗаменить(Строка(ТекущаяДата()),".","")' в переменную "ТекДата"
		И Я запоминаю значение выражения 'СтрЗаменить($ТекДата$,":","")' в переменную "ТекДата"
		И Я запоминаю значение выражения 'СтрЗаменить($ТекДата$," ","_")' в переменную "ТекДата"	
		И Я запоминаю значение выражения 'Test $ТекДата$' в переменную "НаименованиеНоменклатуры"
	* Заполнение нового элемента Items
		И Я открываю навигационную ссылку "e1cib/list/Catalog.Items"
		И я нажимаю на кнопку с именем 'FormCreate'
		И в поле с именем 'Description_en' я ввожу текст '$НаименованиеНоменклатуры$'
		И в поле с именем 'ItemID' я ввожу текст '$ТекДата$'
		И я перехожу к следующему реквизиту
		И я нажимаю кнопку выбора у поля с именем "ItemType"
		И в таблице "List" я перехожу к строке:	
			| 'Code' | 'Description'                | 'Reference'                  |
			| '1'    | 'Товар (есть размер и цвет)' | 'Товар (есть размер и цвет)' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля с именем "Unit"
		И в таблице "List" я перехожу к строке:	
			| 'Code' | 'Description' | 'Reference' |
			| '1'    | 'шт'          | 'шт'        |			
		И в таблице "List" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля с именем "Vendor"
		И в таблице "List" я перехожу к строке:	
			| 'Code' | 'Description'                |
			| '3'    | 'Поставщик 1 (1 соглашение)' |
		И в таблице "List" я выбираю текущую строку
		И я разворачиваю группу с именем "GroupDimensions"
		И я перехожу к закладке с именем "GroupDimensions"
		И в поле с именем 'Length' я ввожу текст '1,000'
		И в поле с именем 'Width' я ввожу текст '2,000'
		И в поле с именем 'Height' я ввожу текст '3,000'
		И в поле с именем 'Volume' я ввожу текст '4,000'
		И я разворачиваю группу с именем "GroupWeightInformation"
		И я перехожу к закладке с именем "GroupWeightInformation"
		И в поле с именем 'Weight' я ввожу текст '5,000'	
		И я нажимаю на кнопку с именем 'FormWrite'
		И я запоминаю значение поля "Code" как "КодНоменклатуры"
		И я нажимаю кнопку выбора у поля с именем "PackageUnit"
		И в таблице "List" я перехожу к строке:
			| 'Code' | 'Description' | 'Reference' |
			| '1'    | 'шт'          | 'шт'        |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку с именем 'FormWrite'							
	* Проверка заполнения полей
		Тогда элемент формы с именем "Description_en" стал равен '$НаименованиеНоменклатуры$'
		Тогда элемент формы с именем "ItemID" стал равен '$ТекДата$'
		Тогда элемент формы с именем "ItemType" стал равен 'Товар (есть размер и цвет)'
		Тогда элемент формы с именем "Unit" стал равен 'шт'
		Тогда элемент формы с именем "PackageUnit" стал равен 'шт'
		Тогда элемент формы с именем "Vendor" стал равен 'Поставщик 1 (1 соглашение)'
		Тогда у элемента формы с именем "Length" текст редактирования стал равен '1,000'
		Тогда у элемента формы с именем "Width" текст редактирования стал равен '2,000'
		Тогда у элемента формы с именем "Height" текст редактирования стал равен '3,000'
		Тогда у элемента формы с именем "Volume" текст редактирования стал равен '4,000'
		Тогда у элемента формы с именем "Weight" текст редактирования стал равен '5,000'						
	* Проверка создания элемента
		И я нажимаю на кнопку с именем 'FormWriteAndClose'
		И я жду закрытия окна 'Номенклатура (товар) (Item)' в течение 20 секунд				
		И таблица "List" содержит строки:
			| 'Code' |
			| '$КодНоменклатуры$' |

		
