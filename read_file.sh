echo "Введите название файла:"
read file_to_read

while IFS= read -r line; do
    echo "$line"
done < "$file_to_read"
