#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Вы не указали папку!"
    exit 1
fi

directory="$1"

if [ ! -d "$directory" ]; then
    echo "Папка не существует!"
    exit 1
fi

echo "Очистка файлов с расширениями .bak; .tmp; .backup..."

rm -f "$directory"/*.bak "$directory"/*.tmp "$directory"/*.backup

echo "Очистка завершена!"