#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Вы не указали папку!"
    exit 1
fi

directory="$1"

if [ ! -d "$directory" ]; then
    echo "Папка не найдена!"
    exit 1
fi

echo "Копирование..."

for file in "$directory"/*; do
    if [ -f "$file" ]; then
        owner=$(stat -c %U "$file")
        mkdir -p "$directory/$owner"
        cp "$file" "$directory/$owner/"
        echo "Копирование $file в $directory/$owner/"
    fi
done

echo "Копирование завершено!"
