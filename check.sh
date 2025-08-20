#!/usr/bin/env bash
# Unified test runner for the Conditionals assignment.

set -u

CXX=${CXX:-g++}
CXXFLAGS="-std=c++17 -O2 -Wall -Wextra -Werror -pedantic"

sources=(evenodd.cpp)
binaries=(evenodd)

compile() {
  local src="$1" out="$2"
  echo "Compiling $src -> $out"
  $CXX $CXXFLAGS "$src" -o "$out"
}

pass=0
fail=0
total=0

run_test() {
  local exe="$1" input="$2" expected="$3"
  ((total++))
  local output
  output="$(echo "$input" | "./$exe")"
  # Normalize CRLF just in case.
  output="$(echo -n "$output" | tr -d '\r')"
  if [[ "$output" == "$expected" ]]; then
    echo "✓ $exe <$input> => PASS"
    ((pass++))
  else
    echo "✗ $exe <$input> => FAIL"
    echo "   expected: $expected"
    echo "   got     : $output"
    ((fail++))
  fi
}

# Compile all
for i in "${!sources[@]}"; do
  compile "${sources[$i]}" "${binaries[$i]}" || { echo "Compilation failed for ${sources[$i]}"; exit 1; }
done

echo
echo "== Running tests =="

# evenodd
run_test evenodd "2"   "2 is even."
run_test evenodd "3"   "3 is odd."
run_test evenodd "0"   "0 is even."
run_test evenodd "-5"  "-5 is odd."
run_test evenodd "100" "100 is even."


echo
echo "Summary: Passed=$pass Failed=$fail Total=$total"
[[ $fail -eq 0 ]] && exit 0 || exit 1
