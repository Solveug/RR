### Задача 24-1 — Который час? А сейчас?

Напишите программу, которая каждую секунду выводит в консоли текущее время с точностью до секунды.

Программа должна выводить время столько раз, сколько укажет пользователь (аргументом командной строки при запуске программы или уже после запуска введя в консоли по запросу программы).

Если пользователь ничего не указал (или указал 0 при вводе), то программа должна вывести время 10 раз.

Программа должна использовать блоки и не должна содержать ни создание массива (Array), ни диапазона (Range).

**Пример работы:**

```
2016-08-19 20:57:56 +0300
2016-08-19 20:57:57 +0300
2016-08-19 20:57:58 +0300
2016-08-19 20:57:59 +0300
2016-08-19 20:58:00 +0300
2016-08-19 20:58:01 +0300
2016-08-19 20:58:02 +0300
2016-08-19 20:58:03 +0300
2016-08-19 20:58:04 +0300
2016-08-19 20:58:05 +0300
```

### Задача 24-2 — Опросник по `Style Guide `

Правильны ли эти объявления и использования методов с точки зрения код стайла?

*1*
```
def valid?()
  # тут реализация метода
end
```

*2*
```
def sum(a, b)
  # тут реализация метода
end
```
*3*
celsius_temp = person.calculate_temp 'Celcius', 30

*4*
```
puts (23)
5
x = Math.cos(y)
```

Правильны ли следующие конструкции в коде согласно код стайлу?

*6*
```
зарплата = 1000
7
def buyTicket
  # тут реализация метода
end
```

*8*

```
class ExtraHardToGetFromXMLTicket
  # тут реализация класса
end
```


### Задача 24-3 — Тыры-пыры

Популярная на собеседованиях задача: «тыры-пыры».

Напишите программу, которая проходит по всем числам от `1` до `100` и для каждого числа выводит это число, но если оно делится на три — выводит вместо числа `«тыры»`, если на пять — `«пыры»`, а если и на три и на пять — `«тыры-пыры»`.

Используйте фишки руби, какие считаете уместными.