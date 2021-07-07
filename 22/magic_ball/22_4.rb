greetings = [
  'Ты слышишь? Гром гремит! Это точно потому, что мы сегодня встретились!',
  'Неужели, сама судьба распорядилась, чтобы мы вот так с тобой встретились!',
  'Машу тебе рукой! Машу тебе ногой! Могу и головой помахать! Привет, я рад тебя видеть!',
  'Ты смотри! Не идет, а плывет, летит! Привет!',
  'Ты от меня так настойчиво прятался, но я все-таки тебя выследил. Дружище!',
  'Сколько лет и сколько зим! ТЫ всегда неотразим!',
  'О, да! Приветствую тебя, о секретный агент, скрывавшийся от меня столько лет!',
  'Здравствуй, дорогой человек! Как же мне хорошо, когда я на тебя смотрю!',
 ' Без тебя этот день не был бы так хорош… Привет!',
  'Нет, нет, я не готов был тебя встретить… Это же такое событие! Где фейерверки?',
  'А ну-ка взгляни на меня! Ты меня еще узнаешь? Да, да… Я тот самый твой старый друг!'
]

answers = [
  # Положительные:
  'Бесспорно',
  'Предрешено',
  'Никаких сомнений',
  'Определённо да',
  'Можешь быть уверен в этом',

  # Нерешительно положительные
  'Мне кажется — «да»',
  'Вероятнее всего',
  'Хорошие перспективы',
  'Знаки говорят — «да»',
  'Да',

  # Нейтральные
  'Пока не ясно, попробуй снова',
  'Спроси позже',
  'Лучше не рассказывать',
  'Сейчас нельзя предсказать',
  'Сконцентрируйся и спроси опять',

  # Отрицательные
  'Даже не думай',
  'Мой ответ — «нет»',
  'По моим данным — «нет»',
  'Перспективы не очень хорошие',
  'Весьма сомнительно'
]

puts "#{greetings.sample}\nЗагадывай свой вопрос..."
puts
sleep 3
puts answers.sample
