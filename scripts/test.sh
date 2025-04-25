#!/bin/bash
declare -A tests
tests=(
	["one two three four five six seven eight"]="Result: eight seven six five four three two one"
	["Lorem ipsum dolor sit amet consectetur adipiscing elit"]="Result: elit adipiscing consectetur amet sit dolor ipsum Lorem"
	["hello world"]="Result: world hello"
	["hi"]="Result: hi"
)

for key in "${!tests[@]}"; do
	output="$(./reverse ${key})"
	if ["${output}" = "${tests[$key]}"]; then
		echo "Success test '${key}'"
	else
		echo "Failure test '${key}'"
		echo "  expected: '${tests[$key]}'"
		echo "  got: '${output}'"
		exit 1
	fi
done