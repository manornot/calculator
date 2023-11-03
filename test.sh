#!/bin/bash
test_calculator()
{
    num1="$1"
    op="$2"
    num2="$3"
    expected_output="$4"
    actual_output=$(./main.o "$num1" "$op" "$num2")

    if [ "$actual_output" -eq "$expected_output" ]; then 
        echo "test passed"
    else 
        echo "failed, $num1 $op $num2 = $actual_output, not $expected_output"
        exit 1
    fi

}

test_calculator "10" "+" "2" "12"
test_calculator "1" "*" "1" "1"
test_calculator "10" "+" "2" "12"
test_calculator "10" "*" "10" "100"
test_calculator "2" "/" "2" "1"
test_calculator "10" "/" "2" "5"
test_calculator "106" "/" "2" "53"
test_calculator "10" "/" "2" "5"
test_calculator "10" "/" "2" "5"
test_calculator "12" "*" "12" "144"
test_calculator "0" "/" "2" "0"