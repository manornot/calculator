#!/bin/bash
test_calculator()
{
    num1="$1"
    op="$2"
    num2="$3"
    expected_output="$4"
    actual_output=$(./main "$num1" "$op" "num2")

    if [ "$actual_output" -eq "$expected_output" ]; then 
        echo "test passed"
    else 
        echo "failed, $actual_output, $expected_output, $num1, $num2, $op"
    fi

}

test_calculator "10" "+" "2" "12"