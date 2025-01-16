TARGET_DIR="/etc"

# Подсчитываем количество файлов (исключая каталоги и ссылки)
file_count=$(find "$TARGET_DIR" -type f | wc -l)
echo "Кількість файлів в $TARGET_DIR: $file_count"
