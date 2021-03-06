puts "Текстовый квест \"Сильно сказочное БУТОВО\""
questions = [
  [0, "Вы вышли на развилку. Куда пойдете дальше?\n1.Налево\n2.Направо\n3.Вернуться домой", [101,102,103]],
  # ответы на первый вопрос
  [101, "На развилке Вы повернули налево и встретили Троля\n1.Убежать\n2.Поговорить\n3.Напасть", [201,202,203]],
  [102, "На развилке Вы повернули направо и увидели реку\n1.Переплыть\n2.Бросить камень\n3.Попить", [301,302,303]],
  [103, "Вы повернули назад и алга. Больше ничего интересного с вами не произошло", [999]],
  #ответы на второй вопрос
  [201, "Вы решили убежать от Троля и запыхавшись прибежали к реке\n1.Переплыть на другой берег\n2.Бросить камень\n3.Попить", [301,302,303]],
  [202, "Нечисть не понимает Вас\n1.Объясняться жестами\n2.Бросить это дело и пойти домой\n3.Попытаться ограбить убогого", [401,103,402]],
  [203, "Вы напали на Троля. Троль удивился и дал сдачи\n1.Увернуться\n2.Отбежать в сторону леса\n3.Заплакать", [501,502,503]],
  # ответы на третий вопрос
  [301, "Вас схватил Водяной\n1.Отбиваться\n2.Договориться\n3.Смириться", [601,602,999]],
  [302, "Вы бросили камень в реку, появился недовольный Водяной\n1.Поговорить\n2.Испугаться и убежать домой\n3.Попытаться ограбить убогого", [202, 103, 402]],
  [303, "Вы наклонились к реке чтобы попить, почувствовали сильный пинок под зад и упали в воду", [301]],
  # ответ на четвертый вопрос
  [401, "Вас не поняли, подумали что Вы больной, испугались и ударили\n1.Начать заново\n2.Фу на вас с такими играми", [0, 999]],
  [402, "Нечисть сильно обиделась и ударила Вас, Вы погибли\n1.Начать заново\n2.Выйти", [0, 999]],
  # ответ на пятый вопрос
  [501, "Маневр удался. Троль ударил сам себя и упал\n1.У вас давно не было женщины и Вы решили воспользоваться ситуацией\n2.Ограбить\n3.Реанимационные действия", [701, 402, 702]],
  [502, "Маневр удался. Вы сидите на высокой ели и в печали\n1.Анонсировать первый лесной турнир по метанию шишек\n2.Звать на помощь\n3.Смириться, спуститься и получить люлей", [801, 802, 999]],
  [503, "Троль удивился и проводил Вас домой, попутно обобрав до нитки.\n1.Идти домой", [103]],
  # ответ на шестой вопрос
  [601, "Речные жители были восхищены Вашей отвагой и решили поддержать Вас в борьбе с узарпатором. Теперь под вашим началом стая русалок и легион раков\n1.Утопить водяного\n2.Сжалиться над водяным", [901, 902]],
  [602, "Водяной предложил Вам свою дочь в жены (честро говоря, такая себе пиявка с глазами)\n1.Согласиться\n2.Отказаться", [1001, 999]],
  # ответ на седьмой вопрос
  [701, "Троль оказался самкой и теперь считает Вас своим мужем. Вы идете домой с Тролихой и пытаетесь придумать как обьяснить всё маме", [1000]],
  [702, "Троль очнулся и в благодарность подарил Вам мешок с сокровищами\n1.Идти через лес в город с Тролем\n2.Вернуться домой с сокровищем", [1002, 1000]],
  # ответ на восьмой вопрос
  [801, "Тролю понравилось ловить шишки, он считает их лакомством. Троль называет Вас своим лучшим другом\n1.Предложить Тролю сходить вместе с город и отметить перемирие\n2.Попросить Троля проводить Вас домой", [1002,1000]],
  [802, "На ваши крики никто не пришел, но Тролю понравилось как Вы голосите и он назвал Вас своим лучшим шизанутым другом\n1.Сидеть на ели бояться и плакать\n2.Предложить Тролю сходить в город", [999, 1002]],
  # ответ на девятый вопрос
  [901, "Водяной побежден и Вы новый Хозяин реки\n1.Радоваться потому, что у вас теперь гарем из русалок и запас раков к пиву\n2.Приуныть потому, что Вы больше никогда не покинете пределы реки", [1000, 1000]],
  [902, "Водяной  покорен Вашим великодушием и дарит вам мешок с сокровищами\n1.Вернуться домой с сокровищами\n2.Предложить водяному отметить дружбу в городе", [103, 1002]],
  # ответ на десятый вопрос
  [1001, "Вы женились на самой страшной русалке и стали одним из подданых Водяного\n1.Ура, личная жизнь наладилась, можно съехать от мамы", [1000]],
  [1002, "Вы пришли в город с новым другом и пропили все сокровища в ближайшем кабаке\n1.Теперь Вы лучшие друзья с нечистью, поздравляем!", [1000]],

  [999, "Слабак!", [1000]],
  [1000, "Игра окончена\n1.Начать сначала?\n2.Exit", [0, :exit]]
]

def select_answer(questions, answer)
  exit if answer == :exit
  q1 = ""
  questions.each{|question| q1 = question if question[0] == answer}
  puts q1[1]
  if q1[2].size == 1
    index = q1[2][0]
  else
    while index.nil? do
      print "Ваш выбор: "
      user_choise = gets.chomp.to_i
      index = q1[2][user_choise - 1]
      index = nil if user_choise == 0
      # break if !index.nil?
    end
  end
  puts "_______________________________"
  select_answer(questions,index)
end
puts select_answer(questions,0)
