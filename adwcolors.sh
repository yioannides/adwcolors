#!/usr/bin/env bash

print_color() {
    local r=$1 g=$2 b=$3 name=$4 hex=$5
    printf "\033[38;2;%s;%s;%sm⬤	\033[0m %-12s %s\n" "$r" "$g" "$b" "$name" "$hex"
}

column_a() {
	echo
    print_color 153 193 241	"@blue_1" "#99c1f1"
    print_color 98 160 234	"@blue_2" "#62a0ea"
    print_color 53 132 228	"@blue_3" "#3584e4"
    print_color 28 113 216	"@blue_4" "#1c71d8"
    print_color 26 95 180	"@blue_5" "#1a5fb4"
    echo
    print_color 255 190 111 "@orange_1" "#ffbe6f"
    print_color 255 163 72  "@orange_2" "#ffa348"
    print_color 255 120 0   "@orange_3" "#ff7800"
    print_color 230 97 0    "@orange_4" "#e66100"
    print_color 198 70 0    "@orange_5" "#c64600"
    echo
    print_color 205 171 143 "@brown_1" "#cdab8f"
    print_color 181 131 90  "@brown_2" "#b5835a"
    print_color 152 106 68  "@brown_3" "#986a44"
    print_color 134 94 60   "@brown_4" "#865e3c"
    print_color 99 69 44    "@brown_5" "#63452c"
}

column_b() {
	echo
    print_color 143 240 164 "@green_1" "#8ff0a4"
    print_color 87 227 137  "@green_2" "#57e389"
    print_color 51 209 122  "@green_3" "#33d17a"
    print_color 46 194 126  "@green_4" "#2ec27e"
    print_color 38 162 105  "@green_5" "#26a269"
    echo
    print_color 246 97 81   "@red_1" "#f66151"
    print_color 237 51 59   "@red_2" "#ed333b"
    print_color 224 27 36   "@red_3" "#e01b24"
    print_color 192 28 40   "@red_4" "#c01c28"
    print_color 165 29 45   "@red_5" "#a51d2d"
    echo
    print_color 255 255 255 "@light_1" "#ffffff"
    print_color 246 245 244 "@light_2" "#f6f5f4"
    print_color 222 221 218 "@light_3" "#deddda"
    print_color 192 191 188 "@light_4" "#c0bfbc"
    print_color 154 153 150 "@light_5" "#9a9996"
}

column_c() {
	echo
    print_color 249 240 107 "@yellow_1" "#f9f06b"
    print_color 248 228 92  "@yellow_2" "#f8e45c"
    print_color 246 211 45  "@yellow_3" "#f6d32d"
    print_color 245 194 17  "@yellow_4" "#f5c211"
    print_color 229 165 10  "@yellow_5" "#e5a50a"
    echo
    print_color 220 138 221 "@purple_1" "#dc8add"
    print_color 192 97 203  "@purple_2" "#c061cb"
    print_color 145 65 172  "@purple_3" "#9141ac"
    print_color 129 61 156  "@purple_4" "#813d9c"
    print_color 97 53 131   "@purple_5" "#613583"
    echo
    print_color 119 118 123 "@dark_1" "#77767b"
    print_color 94 92 100   "@dark_2" "#5e5c64"
    print_color 61 56 70    "@dark_3" "#3d3846"
    print_color 36 31 49    "@dark_4" "#241f31"
    print_color 0 0 0       "@dark_5" "#000000"
    echo
}

paste <(column_a) <(column_b) <(column_c)
