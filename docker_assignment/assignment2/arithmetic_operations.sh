#!/bin/bash
echo "Enter the first value:"
read -r first_value
echo "Enter the second value"
read -r second_value
PS3="Please select an option : "
select operation in Add Sub Mul Div; do
  case $operation in
  Add)
    echo "$first_value + $second_value = $((first_value + second_value))"
    break
    ;;
  Sub)
    echo "$first_value - $second_value = $((first_value - second_value))"
    break
    ;;
  Mul)
    echo "$first_value * $second_value = $((first_value * second_value))"
    break
    ;;
  Div)
    echo "$first_value / $second_value = $((first_value / second_value))"
    break
    ;;
  *)
    echo "Invalid option $operation"
    break
    ;;
  esac
done
