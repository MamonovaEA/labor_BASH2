add() {
    echo "$(($1 + $2))"
}

subtract() {
    echo "$(($1 - $2))"
}

multiply() {
    echo "$(($1 * $2))"
}

divide() {
    if [ "$2" -eq 0 ]; then
        echo "Ошибка: Деление на ноль!"
    else
        echo "$(($1 / $2))"
    fi
}

echo "Введите первое число:"
read num1
echo "Введите второе число:"
read num2

echo "Выберите операцию:"
echo "1. Сложение"
echo "2. Вычитание"
echo "3. Умножение"
echo "4. Деление"
echo "Введите номер операции (1/2/3/4):" 
read operation

if [ "$operation" -eq 1 ]; then
    result=$(add $num1 $num2)
    echo "Результат сложения: $result"
elif [ "$operation" -eq 2 ]; then
    result=$(subtract $num1 $num2)
    echo "Результат вычитания: $result"
elif [ "$operation" -eq 3 ]; then
    result=$(multiply $num1 $num2)
    echo "Результат умножения: $result"
elif [ "$operation" -eq 4 ]; then
    result=$(divide $num1 $num2)
    echo "Результат деления: $result"
else
    echo "Ошибка: Неверный выбор операции."
fi
