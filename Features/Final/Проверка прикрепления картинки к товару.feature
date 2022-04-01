﻿#language: ru

@tree

Функционал: Проверка прикрепления картинки к товару

Как Тестировщик я хочу
проверить что к товару можно выполнить прикрепление картинки
чтобы для каждого товара можно было указать картинку

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка прикрепления картинки к товару
* Подготовка данных для теста
	И я закрываю все окна клиентского приложения
	Когда экспорт основных данных
* Подготовка наименования для новой номенклатуры
	И Я запоминаю значение выражения 'СтрЗаменить(Строка(ТекущаяДата()),".","")' в переменную "ТекДата"
	И Я запоминаю значение выражения 'СтрЗаменить($ТекДата$,":","")' в переменную "ТекДата"
	И Я запоминаю значение выражения 'СтрЗаменить($ТекДата$," ","_")' в переменную "ТекДата"	
	И Я запоминаю значение выражения 'Тест прикрепление картинки $ТекДата$' в переменную "НаименованиеТовара"
* Создание новой номенклатуры
	Дано Я открываю навигационную ссылку "e1cib/list/Справочник.Товары"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И в поле с именем 'Наименование' я ввожу текст '$НаименованиеТовара$'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Файлы'
	И я нажимаю на кнопку с именем 'Создать'	
	И я выбираю файл "$КаталогПроекта$\Features\Final\Test2.JPG"		
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	И Я запоминаю значение текущего окна 'ПолучитьНавигационнуюСсылку(_ТекущееОкно.Объект.Ссылка)' в переменную "НавигационнаяСсылкаКартинки" (Расширение)
	И Я запоминаю значение выражения 'СтрЗаменить($НавигационнаяСсылкаКартинки$,"ХранимыеФайлы","ХранимыеФайлы.ДанныеФайла")' в переменную "НавигационнаяСсылкаКартинки"	
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Test2.JPG'    |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка прикрепленной картинки
	Тогда элемент формы с именем "Картинка" стал равен '$НавигационнаяСсылкаКартинки$'
	И у элемента формы с именем "Картинка" текст редактирования стал равен '$НавигационнаяСсылкаКартинки$'



