﻿#language: ru

Функционал: проверка создание клиента

Как оператор я хочу
создать клиента
чтобы вести клиентскую базу

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка создания клиента
И я закрываю все окна клиентского приложения	
* Открытие формы создание клиента
	И В командном интерфейсе я выбираю 'Продажи' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСписок'		
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение наименование клиента
	И в поле с именем 'Наименование' я ввожу текст 'ТЕСТ Родник Здоровья'	
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'			
* Заполнение номера телефона клиента
	И в поле с именем 'Телефон' я ввожу текст '+7 999 012345678'	
* Сохранение
	И я нажимаю на кнопку "Записать"
	И я запоминаю значение поля "Код" как "Код"		
	И Я закрываю окно 'Родник Здоровья (Контрагент)'		
	И я жду закрытия окна 'Родник Здоровья (Контрагент)' в течение 20 секунд		
* Проверка сохранения по коду
	Тогда таблица "Список" содержит строки:
		| 'Код'   |
		| '$Код$' |
	
	

