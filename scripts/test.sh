#!/bin/bash
declare -A tests
tests=(
	["one two three four five six seven eight"]="eight seven six five four three two one"
	["Lorem ipsum dolor sit amet consectetur adipiscing elit"]="elit adipiscing consectetur amet sit dolor ipsum Lorem"
	["hello world"]="world hello"
	["hi"]="hi"
)

for key in "${!tests[@]}"; do
	output="$(${pwd}/reverse ${key})"
	if ["${output}" = "${tests[$key]}"]; then
		echo "Success test '${key}'"
	else
		echo "Failure test '${key}' expected output '${tests[$key]}' got '${output}'"
		exit 1
	fi
done