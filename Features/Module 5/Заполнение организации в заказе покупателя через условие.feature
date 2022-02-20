#language: ru

@tree

Функционал: Заполнение организации в заказе покупателя через условие

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовка данных
	И я проверяю или создаю для справочника "Agreements" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Number' | 'Date'               | 'PartnerSegment' | 'Partner'                                                          | 'Company' | 'PriceType'                                             | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store' | 'Type'                         | 'LegalName' | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                   | 'StandardAgreement' | 'Kind'                        | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm' | 'Description_en' | 'Description_hash' | 'Description_ru'                  | 'Description_tr' |
		| 'e1cib/data/Catalog.Agreements?ref=a50900d861d86d4e11ec9226e69bf86c' | 'False'        | 10     | ''       | '01.01.0001 0:00:00' | ''               | 'e1cib/data/Catalog.Partners?ref=a50900d861d86d4e11ec9226e69bf86b' | ''        | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | ''            | '01.01.0001 0:00:00' | '01.01.0001 0:00:00' | ''               | 'False'           |                      | ''      | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByAgreements' | ''                  | 'Enum.AgreementKinds.Regular' | 'False'          |                     | ''            | ''               | ''                 | 'Тест соглашение без организации' | ''               |
	И я проверяю или создаю для справочника "Partners" объекты:
		| 'Ref'                                                              | 'DeletionMark' | 'Parent' | 'Code' | 'Customer' | 'Vendor' | 'Employee' | 'Opponent' | 'ManagerSegment' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
		| 'e1cib/data/Catalog.Partners?ref=a50900d861d86d4e11ec9226e69bf86b' | 'False'        | ''       | 13     | 'True'     | 'False'  | 'False'    | 'False'    | ''               | ''               | ''                 | 'Тест клиент 3'  | ''               |

Сценарий: Заполнение организации в заказе покупателя через условие
	И я закрываю все окна клиентского приложения	
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я перехожу к строке
		| 'Код' | 'Наименование'  |
		| '13'  | 'Тест клиент 3' |
	И я нажимаю на кнопку с именем 'FormChoose'
	Если элемент формы с именем "Company" стал равен '' Тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
		И в таблице "List" я перехожу к строке
			| 'Код' | 'Наименование'           |
			| '1'   | 'Собственная компания 1' |
		И я нажимаю на кнопку с именем 'FormChoose'
				
		
		