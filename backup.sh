echo "Введите директорию с файлами:"
read source_dir
echo "Введите директорию для копирования:"
read target_dir

current_date=$(date +%Y-%m-%d)

for file in "$source_dir"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        cp "$file" "$target_dir/${filename%.*}-$current_date.${filename##*.}"
        fi
done
