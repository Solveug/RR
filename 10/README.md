### Задача 10-1 — Считаем строки в файлах

Написать программу, которая считает сколько в указанном файле строк всего, сколько пустых строк, а также выводит на экран последние 5 строк этого файла.

Пользователь вводит название файла в качестве параметра консоли при запуске. Если же файл не найден, то сообщает об этом пользователю.

Проверьте работу программы на различных вами же придуманных файлах.

```
Например:

Открыли файл: data/file.txt
Всего строк: 10
Пустых строк: 4
Последние 5 строк файла:

Это пятая строка с конца.
Это четвёртая строка с конца.
Это третья строка с конца.
Это вторая строка с конца.
Это последняя строка.
```

### Задача 10-2 — Генератор рожиц

Напишите программу–генератор рожиц с использованием псевдографики: программа должна генерить лицо из произвольно выбранных фрагментов: лба, глаз, носа и рта.

Эти фрагмены придумайте сами с помощью символов в виде строчек.

Например, из такого лба / --- \, таких глаз | O o |, носа \ v / и рта \ - /, получится рожица:
```
 / --- \
| O   o |
\   v   /
 \  -  /
 ```
Варианты для каждой части лица программа должна брать из соответствующего файла, например, глаза из файла data/eyes.txt.


### Задача 10-3 — Читаем файл из папки

Мини-викторина
Давайте научимся смотреть содержимое папок в руби. Создайте папку data и положите в неё три любых текстовых файла (можно больше трех).

Напишите программу, которая показывает список файлов в папке data и спрашивает, содержимое какого файла вывести. А потом выводит содержимое выбранного файла:

```
$ ruby main.rb
Какой файл вам показать? (введите номер)
0: data/file2.txt
1: data/file1.txt
2: data/file3.txt
1

Привет!
Я содержимое файла file2.txt!
```

### Задача 10-4 — Викторина

Мини-викторина
Создайте папку data, и положите в неё несколько (5-7) текстовых файлов. Первая строка в каждом файле — вопрос, а вторая — ответ.

```
Например:

data/01.txt:

Сколько байт в килобайте?
1024

data/02.txt:

В каком году Гагарин полетел в космос?
1961
data/03.txt:

Сколько дней в високосном году?
366
```

Напишите программу, которая считывает все вопросы задает пользователю в консоли 3 случайных вопроса в случайном порядке.

Задав вопрос, программа ждет ответа пользователя в консоли. А затем сравнивает с правильным ответом и сообщает, правильно ответил пользователь, или нет.

Если ответ неверный, программа сообщает какой ответ правильный. В конце сообщает результат — сколько было дано правильных ответов.

```
Пример запуска:

Мини-викторина. Ответьте на вопросы.

Сколько байт в килобайте?
> 1024
Верный ответ!

В каком году Гагарин полетел в космос?
> 1962
Неправильно. Правильный ответ: 1961

Сколько дней в високосном году?
> 366
Верный ответ!

Правильных ответов: 2 из 3

```

Придумайте свои вопросы и ответы :)

В качестве ответа приложите архив с папкой data и самой программой.