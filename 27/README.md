### Задача 27-1 — Магазин с витриной и конструкторами 

Продолжаем развивать наш «Магазин», который мы создали в уроке про наследование классов.

Сделайте так, чтобы из основной программы можно было создать объект класса `Book` или `Film`, передав ему кроме цены также другие параметры. Для книги — название, жанр и автора; для фильма — название, год и режиссера.

Напишите также метод `to_s` для экземпляра класса `Film` и `Book`, который возвращает информацию об этом экземпляре одной строкой.

В основной программе создайте пару книжек и фильмов и выведите их в цикле на экран.
```
Например:

Вот какие товары у нас есть:

Фильм «Леон», 1994, реж. Люк Бессон, 990 руб. (осталось 5)
Фильм «Дурак», 2014, реж. Юрий Быков, 390 руб. (осталось 1)
Книга «Идиот», роман, автор — Федор Достоевский, 1500 руб. (осталось 10)
```

### Задача 27-2 — Магазин с сеттерами и update 

Продолжаем развивать наш «Магазин»: допишите важные методы для изменения экземпляров классов `Book` и `Film`.

Сделайте так, чтобы у любого продукта можно было поменять внутреннюю переменную экземпляра, например, вот так:
```
product = Film.new(title: 'Леон', director: 'Люк Бессон', price: 990)

product.year = 1994
product.amount = 5
```
или так:
```
product.update(year: 1994, amount: 5)
```


### Задача 27-3 — Магазин с чтением из файлов 

Продолжаем развивать наш «Магазин»: реализуйте функционал считывания продуктов из папки `data`. Пусть в папке, например, `data/films` лежат текстовые файлы в формате, который вам уже знаком (добавляется цена и остаток на складе):
```
Название фильма
Фамилия и имя режиссера
Год выхода
Цена
Остаток
```
А в паке `data/books` — файлы в таком формате:
```
Название книги
Жанр
Фамилия и имя автора
Цена
Остаток
```
Напишите для каждого класса-ребенка метод класса (статический метод) `from_file`, который создает новый экземпляр класса, заполняя его данными из файла, чтобы можно было написать вот так:
```
film = Film.from_file('./data/films/01.txt')
book = Book.from_file('./data/books/01.txt')
```
Сделайте также, чтобы метод родителя возвращал ошибку `NotImplementedError`, на случай, если какой-то ребенок попытается создать себя используя статический метод родителя.


### Задача 27-4 — Магазин с ProductCollection 

Продолжаем развивать наш «Магазин»: реализуйте класс `ProductCollection`, который может хранить в себе любые товары (фильмы или книги) и у которого есть:

Метод класса (статический метод) `from_dir`, который считывает продукты из папки `data`, сам понимая, какие товары в какой папке лежат.

Метод экземпляра `to_a`, который возвращает массив товаров.

Метод экземпляра `sort`, который сортирует товары по цене, остатку на складе или по названию (как по возрастанию, так и по убыванию):

Создайте в основной программе коллекцию товаров, прочитав её из директории и выведите все товары на экран.


### Задача 27-5 — Магазин с дисками 

Добавьте к нашему замечательному магазину ещё и диски. У диска формат файла такой:
```
Название альбома
Исполнитель
Жанр
Год выхода
Цена
Остаток
```
Добавьте, наконец, в наш магазин функционал покупки: пользователь может выбрать несколько товаров и программа напишет ему, сколько с него денег:
```
Что хотите купить:

1. Фильм «Леон», 1994, реж. Люк Бессон, 990 руб. (осталось 5)
2. Книга «Идиот», роман, автор — Федор Достоевский, 1500 руб. (осталось 10)
3. Книга «Санькя», роман, автор — Захар Прилепин, 1000 руб. (осталось 3)
4. Альбом Judas Priest — «Painkiller», Heavy Metal, 1990, 990 руб. (осталось 3)
0. Выход

> 2

Вы выбрали: Книга «Идиот», роман, автор — Федор Достоевский, 1500 руб. (осталось 9)

Всего товаров на сумму: 1500 руб.

Что хотите купить:

1. Фильм «Леон», 1994, реж. Люк Бессон, 990 руб. (осталось 5)
2. Книга «Идиот», роман, автор — Федор Достоевский, 1500 руб. (осталось 9)
3. Книга «Санькя», роман, автор — Захар Прилепин, 1000 руб. (осталось 3)
4. Альбом Judas Priest — «Painkiller», Heavy Metal, 1990, 990 руб. (осталось 3)
0. Выход

> 4

Вы выбрали: Альбом Judas Priest — «Painkiller», Heavy Metal, 1990, 990 руб. (осталось 2)

Всего товаров на сумму: 2490 руб.

Что хотите купить:

1. Фильм «Леон», 1994, реж. Люк Бессон, 990 руб. (осталось 5)
2. Книга «Идиот», роман, автор — Федор Достоевский, 1500 руб. (осталось 9)
3. Книга «Санькя», роман, автор — Захар Прилепин, 1000 руб. (осталось 3)
4. Альбом Judas Priest — «Painkiller», Heavy Metal, 1990, 990 руб. (осталось 2)
0. Выход

> 0

Вы купили:

Книга «Идиот», роман, автор — Федор Достоевский, 1500 руб. (осталось 9)
Альбом Judas Priest — «Painkiller», Heavy Metal, 1990, 990 руб. (осталось 2)

С Вас — 2490 руб. Спасибо за покупки!
```