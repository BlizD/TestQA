﻿#language: ru

@tree
@БыстрыеПроверки

Функционал: проверка заполнения справочника организации

Как тестировщик я хочу
проверить заполнения справочника организации 
чтобы убедится что пользователь может создавать, заполнять и записывать элемент справочника организации

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка заполнения справочника организации
* Подготовка данных для теста
	И я закрываю все окна клиентского приложения
	И я перезаполняю константу "UseCompanies" значением "True"
* Создание нового элемента справочника Организации - Контрагент
	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Организация (создание)'
	И в поле с именем 'Description_ru' я ввожу текст 'Тестовый контрагент'
	И из выпадающего списка с именем "Type" я выбираю точное значение 'Организация'
	И я нажимаю на кнопку с именем 'FormWrite'
	И я запоминаю значение поля с именем "Code" как "КодЭлементаСправочника"	
	И я нажимаю на кнопку с именем 'FormWriteAndClose'
	И я жду закрытия окна 'Тестовый контрагент (Организация)' в течение 5 секунд
* Проверка созданного элемента
	И в таблице "List" я перехожу к строке
		| 'Код' | 'Наименование'        |
		| '$КодЭлементаСправочника$'   | 'Тестовый контрагент' |
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Тестовый контрагент (Организация)'
	Тогда элемент формы с именем "Description_ru" стал равен 'Тестовый контрагент'
	Тогда элемент формы с именем "Type" стал равен 'Организация'
	Тогда элемент формы с именем "Code" стал равен '$КодЭлементаСправочника$'
				
			
	
		
