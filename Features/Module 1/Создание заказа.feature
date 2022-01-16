﻿#language: ru

Функционал: Создание документа заказ

Как Менеджер по продажам я хочу
создавать заказ 
чтобы зафиксировать список заказанных товаров/услуг

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Создание документа заказ - проверка итоговой суммы документа

И я закрываю все окна клиентского приложения	
* Открытие формы создания документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа	
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
* Заполнение табличной части Товары		
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000002' | 'Сапоги'       |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '600,00'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" стала равной:
		| 'Товар'  | 'Цена'   | 'Количество' | 'Сумма'  |
		| 'Сапоги' | '600,00' | '1'          | '600,00' |

	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" стала равной:
		| 'Товар'  | 'Цена'   | 'Количество' | 'Сумма'    |
		| 'Сапоги' | '600,00' | '2'          | '1 200,00' |
	И элемент формы с именем "ТоварыИтогСумма" стал равен '1 200'	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000040' | 'Sony К3456P'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '950,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	Тогда таблица "Товары" стала равной:
		| 'Товар'       | 'Цена'   | 'Количество' | 'Сумма'    |
		| 'Сапоги'      | '600,00' | '2'          | '1 200,00' |
		| 'Sony К3456P' | '950,00' | '3'          | '2 850,00' |	
	И элемент формы с именем "ТоварыИтогСумма" стал равен '4 050'	
	И я нажимаю на кнопку "Записать"		
* Номер
	И я запоминаю значение поля "Номер" как "Номер"	
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
* Проверка создания документа
	И таблица "Список" содержит строки:
		| 'Номер' |
		| '$Номер$' |

Сценарий: Создание документа заказ - проверка ввода количества для услуг

И я закрываю все окна клиентского приложения	
* Открытие формы создания документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа	
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
* Заполнение табличной части Товары			
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000038' | 'Ремонт'       |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1800,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И В таблице "Товары" поле с именем "ТоварыКоличество" доступно	
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'	
	Тогда таблица "Товары" стала равной:
		| 'Товар'  | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Ремонт' | '1 800,00' | '2'          | '3 600,00' |
	И я нажимаю на кнопку "Записать"		
* Номер
	И я запоминаю значение поля "Номер" как "Номер"	
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
* Проверка создания документа
	И таблица "Список" содержит строки:
		| 'Номер' |
		| '$Номер$' |	


