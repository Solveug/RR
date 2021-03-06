### Задача 34-1 — Выбор людей по ID компании 

Вспомним, что у нас есть замечательная база с контактами друзей, которую вы создали в домашнем задании к прошлому уроку.

Напишите запрос, который бы делал выборку по всем людям из таблицы, которые работают в определённой компании (вам известен её идентификатор).

Примерный результат запроса:

```
rowid |  name              |  phone            | company_id  |
7     |  Михаил Бутлицкий  |  +7 926 200-01-02 | 1           |
8     |  Вадим Венедиктов  |  +7 926 300-02-03 | 1           |
```
Код писать не нужно, нужна только строка запроса на языке SQL.



### Задача 34-2 — Выбор людей по названию компании 

Теперь сделаем более хитрый запрос к нашей базе контактов. Попробуйте достать всех сотрудников компании, зная только название этой компании.

Результат будет выглядеть аналогично предыдущей задаче, но в запросе вам изначально известно только имя компании:

```
rowid |  name               |  phone            | company_id  |
7     |  Михаил Бутлицкий   |  +7 926 573.....  | 1           |
8     |  Вадим Венедиктов   |  +7 926 998.....  | 1           |
```
Код писать не нужно, нужна только строка запроса на языке SQL.

Есть много способов это сделать, напишите, сколько придумаете.



### Задача 34-3 — Два метода для поиска постов 

Наш блокнот не идеален.

У него метод `Post.find` отвечает как за поиск одного поста, так и за показ всех постов с заданными свойствами. Как мы уже говорили, это не очень хорошо.

Перепишите программу так, чтобы в ней было (и использовалось) два метода:

`Post.find_by_id` — ищет запись с известным номером
`Post.find_all` — показывает все записи с указанными параметрами



### Задача 34-4 — Обработака ошибок открытия базы 

Добавьте в наш блокнот важное улучшение: обработайте случай, когда база по какой-то причине не открылась. Может, просто не найден файл или во время записи/чтения произошла ошибка.

Примерный результат обработки исключения (обратите внимание на последние строчки):

```
Привет, я твой блокнот!
Версия 2, записываю новые записи в базу SQLite

Что хотите записать в блокнот?
    0. Memo
    1. Task
    2. Link
1
Что надо сделать?
Купить батон
К какому числу? Укажите дату в формате ДД.ММ.ГГГГ, например 12.05.2003
22.12.2016
Не удалось выполнить запрос в базе notepad.sqlite
no such table: posts
```
Для искуственного создания ошибки можно, например, удалить файл `notepad.sqlite` после того, как вы запустили программу, но ещё не создали заметку.
