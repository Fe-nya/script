#!/bin/bash

# проверяем, что переданы оба аргумента для входных данных
if [ -z "$1" ] || [ -z "$2" ]; 
then
  echo "Укажите файлы для входных и выходных данных"
  exit 1
fi

input_file="$1"
output_file="$2"

# проверяем, что третий аргумент задан
if [ -z "$3" ]; 
then
  echo "Укажите искомое слово"
  exit 1
fi

search_word="$3"

# считаем количество вхождений слова
count=$(grep -o -i -w "$search_word" "$input_file" | wc -l)

# выводим ответ в файл вывода
echo "Слово \"$search_word\" найдено $count раз в файле \"$input_file\"" > "$output_file"

exit 0