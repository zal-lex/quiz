def inclination(number)
  ball = 'балл'
  balla = 'балла'
  ballov = 'баллов'
  # Если ничего не передали в метод или передали не число, считаем, что 0
  number = 0 if number.zero? || !number.is_a?(Numeric)

  # Обрабатываем особенный интервал, где также множественное число
  return ballov if (11..14).include?(number % 100)

  # Склоняем в зависимости от остатка деления на 10
  ostatok = number % 10

  return ball if ostatok == 1

  return balla if (2..4).include?(ostatok)

  return ballov if ostatok > 4 || ostatok.zero?
end
