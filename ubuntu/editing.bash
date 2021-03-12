#!/usr/bin/env bash

s.edit() {
 	echo -n $1 > fname.txt   
}

s.ed() {
	ruby -e '
fname = File.read("fname.txt")
$L = File.read(fname).split("\n")
eval ARGV[0]
File.write fname, $L.join("\n") + "\n"
' "$1"
}

s.shutdown() {
	tmux kill-session -t Source
}