#!/bin/bash

# Создаем файл input.txt для входных данных
echo "Брат за братом." > input.txt
echo "Идут три брата: брат Клим брит, брат Глеб брит, брат Игнат бородат. " >> input.txt


./script.sh input.txt output.txt "брат"

# Получаем правильный результат
EXPECTED=$(echo "Слово \"брат\" найдено 4 раз в файле \"input.txt\"")

# Получаем результат работы скрипта
ACTUAL=$(cat output.txt)

# Сравниваем результаты и выводим сообщение
if [ "$EXPECTED" == "$ACTUAL" ]; then
  echo "Тест пройден!"
else
  echo "Тест провален. Задано: $EXPECTED. Получено от скрипта: $ACTUAL"
fi


rm input.txt
rm output.txt