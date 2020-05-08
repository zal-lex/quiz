*ЗАМЕТКА: учебная программа, которая помогла освоить работу с файлами (их чтение и дальнейшая обработка полученных данных)*

# Викторина

Консольная программа, которая позволяет проводить викторины. Каждому вопросу в зависимости от его сложности соответствет определённое количество баллов. За правильные ответы баллы суммируются и выводятся в конце викторины.

## Вопросы

Чтобы добавить в викторину свои вопросы, нужно каждый вопрос сохранить в отдельный `.txt` файл по оределённым правилам:
  1. Первая строка - сам вопрос;
  2. Вторая строка - правильный ответ;
  3. Треться строка - количество баллов за правильный ответ.

Файлы с вопросами нужно загрузить в папку:

```
/data
```

## Установка и запуск программы

Для установки программы достаточно склонировать репозиторий к себе на компьютер. Запуск осуществляется командой:

```
ruby quiz.rb
```

*Для корректной работы программы необходим Ruby версии 2.4.0 и выше*
