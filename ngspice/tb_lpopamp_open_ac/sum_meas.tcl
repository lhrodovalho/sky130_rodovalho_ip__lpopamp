#!/usr/bin/tclsh

set fn [glob include/*.sp]
set fn [lindex [split $fn .] 0]
set fn [lindex [split $fn /] 1]

set fp [open "./include/cornersList" r]
set cornerList [read $fp]
close $fp

set sum_fp [open "./meas/meas.sum" w]

set cornersHeader [lindex $cornerList 0]
set corners [lreplace $cornerList 0 0]

foreach corner $corners {
  set num [lindex [split $corner ","] 0]
#  puts "./meas/${fn}.meas${num}"
  set fp [open "./meas/${fn}.meas${num}" r]
  set meas [read $fp]
  close $fp
  set meas [lindex $meas 1]
#  puts "$meas"
  puts $sum_fp "${corner},${meas}"
}
close $sum_fp

