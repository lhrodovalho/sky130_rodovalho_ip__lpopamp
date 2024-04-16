#!/usr/bin/tclsh

cd ./spice
set spiceList [lsort -dictionary [glob *.sp*]]
puts ">>> spiceList: $spiceList"

foreach spice $spiceList {
  puts ">>> spice: $spice"
  set num [lindex [split $spice "."] end] 
  puts ">>> num: $num"
  exec ngspice -b -r ../out/${num}.raw -o ../out/${num}.log $spice
}
