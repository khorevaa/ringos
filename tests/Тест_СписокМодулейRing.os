#Использовать "../internal/ringmodules"

#Область ОбработчикиТестов

&Тест
Процедура Тест_ДолженСоздатьСписокМодулей() Экспорт
	
	// Дано
	СписокМодулейСтрокой = СписокМодулейСтрокой();
	
	// Когда
	СписокМодулей = Новый СписокМодулейRing(СписокМодулейСтрокой);
	
	// Тогда
	Ожидаем.Что(СписокМодулей).ИмеетТип("СписокМодулейRing");
	Ожидаем.Что(СписокМодулей.Количество()).Равно(5);
	
КонецПроцедуры

&Тест
Процедура Тест_ДолженНайтиМодульПоИмениМодуля() Экспорт
	
	// Дано
	СписокМодулейСтрокой = СписокМодулейСтрокой();
	СписокМодулей = Новый СписокМодулейRing(СписокМодулейСтрокой);
	
	// Когда
	НайденныеМодули = СписокМодулей.НайтиМодули("manager");
	
	// Тогда
	Ожидаем.Что(НайденныеМодули).ИмеетТип("Массив");
	Ожидаем.Что(НайденныеМодули.Количество()).Равно(1);
	Ожидаем.Что(НайденныеМодули[0]).ИмеетТип("МодульRing");
	Ожидаем.Что(НайденныеМодули[0].Идентификатор()).Равно("manager@2.3.4:x86_64");
	
КонецПроцедуры

&Тест
Процедура Тест_ДолженНайтиМодульПоИдентификатору() Экспорт
	
	// Дано
	СписокМодулейСтрокой = СписокМодулейСтрокой();
	СписокМодулей = Новый СписокМодулейRing(СписокМодулейСтрокой);
	
	// Когда
	НайденныеМодули = СписокМодулей.НайтиМодули("worker@1.0.0:x86");
	
	// Тогда
	Ожидаем.Что(НайденныеМодули).ИмеетТип("Массив");
	Ожидаем.Что(НайденныеМодули.Количество()).Равно(1);
	Ожидаем.Что(НайденныеМодули[0]).ИмеетТип("МодульRing");
	Ожидаем.Что(НайденныеМодули[0].Идентификатор()).Равно("worker@1.0.0:x86");
	
КонецПроцедуры

&Тест
Процедура Тест_ДолженНайтиМодульПоВерсииМодуля() Экспорт
	
	// Дано
	СписокМодулейСтрокой = СписокМодулейСтрокой();
	СписокМодулей = Новый СписокМодулейRing(СписокМодулейСтрокой);
	
	// Когда
	НайденныеМодули = СписокМодулей.НайтиМодули("manager@2.3.4");
	
	// Тогда
	Ожидаем.Что(НайденныеМодули).ИмеетТип("Массив");
	Ожидаем.Что(НайденныеМодули.Количество()).Равно(1);
	Ожидаем.Что(НайденныеМодули[0]).ИмеетТип("МодульRing");
	Ожидаем.Что(НайденныеМодули[0].Идентификатор()).Равно("manager@2.3.4:x86_64");
	
КонецПроцедуры

&Тест
Процедура Тест_ДолженНайтиМодульПоАрхитектуреМодуля() Экспорт
	
	// Дано
	СписокМодулейСтрокой = СписокМодулейСтрокой();
	СписокМодулей = Новый СписокМодулейRing(СписокМодулейСтрокой);
	
	// Когда
	НайденныеМодули = СписокМодулей.НайтиМодули("manager:x86_64");
	
	// Тогда
	Ожидаем.Что(НайденныеМодули).ИмеетТип("Массив");
	Ожидаем.Что(НайденныеМодули.Количество()).Равно(1);
	Ожидаем.Что(НайденныеМодули[0]).ИмеетТип("МодульRing");
	Ожидаем.Что(НайденныеМодули[0].Идентификатор()).Равно("manager@2.3.4:x86_64");
	
КонецПроцедуры

&Тест
Процедура Тест_ДолженНайтиМодули() Экспорт
	
	// Дано
	СписокМодулейСтрокой = СписокМодулейСтрокой();
	СписокМодулей = Новый СписокМодулейRing(СписокМодулейСтрокой);
	
	// Когда
	НайденныеМодули = СписокМодулей.НайтиМодули("edt");
	
	// Тогда
	Ожидаем.Что(НайденныеМодули).ИмеетТип("Массив");
	Ожидаем.Что(НайденныеМодули.Количество()).Равно(2);
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция СписокМодулейСтрокой()
	
	СписокМодулейСтрокой =
		"
		|edt@2020.6.0:x86_64 - 1C:Enterprise Development Tools Ring Cli
		|edt@2020.5.0:x86_64 - 1C:Enterprise Development Tools Ring Cli
		|  worker@1.0.0:x86 - worker 1.0.0 x86
		|  worker@2020.5.0:x86_64 - worker 1.0.0 x86_64
		|    manager@2.3.4:x86_64 - manager 2.3.4 x86_64
		|";
	
	Возврат СписокМодулейСтрокой;
	
КонецФункции

#КонецОбласти