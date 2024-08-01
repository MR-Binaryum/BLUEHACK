chars=("A" "B" "C" "D" "E" "F" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0")

generator() {
local prefix=$1
local lenght=$2

if [ $lenght -eq 12 ]; then

echo "${prefix:0:2}:${prefix:2:2}:${prefix:4:2}:${prefix:6:2}:${prefix:8:2}:${prefix:10:2}"

else
    for char in "${chars[@]}"; do
        generator "$prefix$char" $((lenght +1))
    done
fi    

}

generator "" 0  