require_relative 'question'
require_relative 'inclination'

# Константа, хранящая количество задаваемых вопросов

NUMBER_OF_QUESTIONS = 5
# Получаем массив путей к файлам с вопросами в папке /data/
paths = Dir["#{__dir__}/data/*"]

# Считываем 5 случайных файлов с помощью в отдельный массив selected_paths
selected_paths = paths.sample(NUMBER_OF_QUESTIONS)

# В переменной right_answers сохраним количество верных ответов,
# а в переменной total_points количество набранных баллов
right_answers = 0
total_points = 0

# В массиве questions будем хранить в виде объектов класса Question
# вопросы, ответы и баллы
questions = []

# Пройдёмся по selected_path и соберём все вопросы
selected_paths.each do |question_path|
  lines = File.readlines(question_path, encoding: 'UTF-8', chomp: true)
  questions << Question.new(lines[0], lines[1], lines[2].to_i)
end

puts 'Мини-викторина. Ответьте на вопросы.'

# По очереди задаём каждый вопрос пользователю
questions.each do |question|
  puts
  puts question.text + " (#{question.points} #{inclination(question.points)})"
  answer = STDIN.gets.chomp.downcase

  # Проверяем ответ пользователя
  if answer == question.answer
    puts 'Верный ответ!'
    right_answers += 1
    total_points += question.points
  else
    puts "Неправильно. Правильный ответ: #{question.answer}"
  end
end

puts "Правильных ответов #{right_answers} из 5"
puts "Вы набрали #{total_points} #{inclination(total_points)}"
