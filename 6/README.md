### Задача 6-1 — Объединение массивов

Объявите в программе два разных массива строк: один, состоящий из нескольких мужских имен, другой — из женских.

Как угодно создайте третий массив так, чтобы он состоял из всех элементов первого и второго массивов (т. е. из всех мужских и женских имен), не повторяя эти имена в коде. То есть, используя элементы из первых двух массивов.

Потом выведите все три массива на экран.

```
Например:

Мужчины
["Gena", "George", "Misha"]
Женщины
["Katrin", "Liza", "Masha"]
Все вместе
["Gena", "George", "Misha", "Katrin", "Liza", "Masha"]
```

Если вы пользуетесь Windows, то пока используйте только английские буквы в именах, иначе в методе to_s на экран выведется абракадабра. Эту проблему мы решим в будущих уроках.


### Задача 6-2 — Инвертирование массива

Объявите в программе массив с числами от 1 до 5 по порядку.

Выведите на экран сперва этот массив, а затем числа из этого массива в обратном порядке от 5 до 1–го, не изменяя сам исходный массив.

Затем снова выведите исходный массив, измените его, так чтобы теперь его элементы встали задом наперед (от 5 до 1–го) и выведите его на экран снова.

```
Например:

Исходный массив:
[1, 2, 3, 4, 5]
Массив в обратном порядке:
[5, 4, 3, 2, 1]
Исходный массив (не изменился):
[1, 2, 3, 4, 5]
Исходный массив (после изменения):
[5, 4, 3, 2, 1]
```

Попробуйте найти нужные методы массива сами, прежде чем смотреть подсказку.


### Задача 6-3 — Выбор машины из массива

Объявите в программе массив из марок автомобилей (всего около 10). Выведите на экран размер этого массива (но не сам массив) и спросите у пользователя одно число — номер марки автомобиля, который он хочет получить в подарок.

Выведите ему ту марку автомобиля, номер которой запросил пользователь. А если он запросил номер, которого нет (отрицательное число, ноль или больше, чем есть в массиве) — сообщите ему, что он ошибся.

```
Например:

У нас всего 8 машин. Вам какую?
-23
Извините, машины с таким номером у нас нет :(

У нас всего 8 машин. Вам какую?
6
Поздравляем, вы получили:
Toyota
```

Проверьте, что программа верно работает для любых введенных чисел, даже отрицательных.