#!/bin/bash

declare -a extensions=(
  "ace"
  "action"
  "apk"
  "app"
  "bat"
  "bin"
  "cmd"
  "com"
  "command"
  "cpl"
  "csh"
  "dll"
  "dmg"
  "docm"
  "dotm"
  "exe"
  "gadget"
  "inf1"
  "ins"
  "inx"
  "ipa"
  "isu"
  "jar"
  "job"
  "js"
  "jse"
  "ksh"
  "lnk"
  "msc"
  "msi"
  "msp"
  "mst"
  "osx"
  "out"
  "paf"
  "pif"
  "prg"
  "ps1"
  "reg"
  "rgs"
  "run"
  "scf"
  "scr"
  "sct"
  "sh"
  "shb"
  "shs"
  "sys"
  "u3p"
  "vb"
  "vbe"
  "vbs"
  "vbscript"
  "workflow"
  "ws"
  "wsf"
  "wsh"
  "xlsm"
)

rm -f extensions.txt
rm -f extensions-with-dot.txt
rm -f extensions.json
rm -f extensions-with-dot.json

for ext in "${extensions[@]}"
do
  echo "$ext" >>extensions.txt
  echo ".$ext" >>extensions-with-dot.txt
done

cat extensions.txt | jq  --raw-input .  | jq --slurp . >extensions.json
cat extensions-with-dot.txt | jq  --raw-input .  | jq --slurp . >extensions-with-dot.json

