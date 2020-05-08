# Класс для создания объектов-вопросов
class Question
  attr_reader :text, :answer, :points

  def initialize(text, answer, points)
    @text = text
    @answer = answer
    @points = points
  end
end
