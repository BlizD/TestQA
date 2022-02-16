﻿#language: ru

@tree

Функционал: заказ покупателю

Как Тестировщик я хочу
Проверить заполнение полей в форме заказ покупателя
чтобы поля на форме были доступны для ввода данных

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: предварительный загрузка данных
* Подготовка данных для теста
	И я закрываю все окна клиентского приложения
	Когда экспорт основных данных

Сценарий: проверка доступности реквизитов заказ покупателя

* Подготовка данных для теста
	И я закрываю все окна клиентского приложения
* Заполнения шапки документа	
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"	
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я перехожу к строке
		| 'Наименование'               |
		| 'Клиент 1 (1 соглашение)' |	
	И в таблице "List" я выбираю текущую строку
* Проверка заполненности связанных реквизитов 
	Тогда элемент формы с именем "LegalName" стал равен 'Клиент 1'
	Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'
	Тогда элемент формы с именем "Company" стал равен 'Собственная компания 1'
	Тогда элемент формы с именем "Store" стал равен 'Склад 1 (с контролем остатка)'
* Смена партнера
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я перехожу к строке
		| 'Наименование'               |
		| 'Розничный покупатель' |	
	И в таблице "List" я выбираю текущую строку	
	Когда открылось окно 'Табличная часть товаров будет обновлена'
	И я нажимаю на кнопку с именем 'FormOK'
* Проверка заполненности связанных реквизитов 
	Тогда элемент формы с именем "LegalName" стал равен 'Розничный покупатель'
	Тогда элемент формы с именем "Agreement" стал равен 'Розничное'		
	Тогда элемент формы с именем "Company" стал равен 'Собственная компания 1'
	Тогда элемент формы с именем "Store" стал равен 'Склад 1 (с контролем остатка)'			
				
Сценарий: проверка недоступности поля контрагент при пустом партнере

* Подготовка данных для теста
	И я закрываю все окна клиентского приложения
* Заполнения шапки документа	
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"	
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я перехожу к строке
		| 'Наименование'               |
		| 'Клиент 1 (1 соглашение)' |	
	И в таблице "List" я выбираю текущую строку
* Очистка реквизита Партнер
	И я нажимаю кнопку очистить у поля с именем "Partner"
* Проверка доступности реквизита Контрагент
	Когда Проверяю шаги на Исключение:
	|'И я нажимаю кнопку выбора у поля с именем "LegalName"'|							

		

