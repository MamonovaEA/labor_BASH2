echo "Введите название файла:"
read file
echo "Введите слово для изменения:"
read old_word
echo "Введите новое слово:"
read new_word

sed -i "s/$old_word/$new_word/g" "$file"

echo "Все слова '$old_word' были заменены на '$new_word'."
