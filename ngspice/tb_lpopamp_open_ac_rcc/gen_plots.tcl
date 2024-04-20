#!/usr/bin/tclsh

proc plot {name fnList xlabel ylabel} {
  set fp [open "plots/${name}.gnplot" w]
  puts $fp "set xlabel '$xlabel'"
  puts $fp "set ylabel '$ylabel'"
  puts $fp "set logscale x"
  puts $fp "set format x \"10^{%L}\""
  puts $fp "set grid"
  puts $fp "set key off"
  puts $fp "set term png"
  puts $fp "set output '${name}.png'"
  puts $fp "set datafile separator ','"
  puts $fp "plot \\"
  foreach fn $fnList {
    puts $fp "'../${fn}' with lines lt rgb 'blue',\\"
  }
  close $fp
  cd plots
  exec gnuplot ${name}.gnplot
  cd ..
}

set fnList_av   [lsort -dictionary [glob data/*av.csv*]]
set fnList_ph   [lsort -dictionary [glob data/*ph.csv*]]
set fnList_cmrr [lsort -dictionary [glob data/*cmrr.csv*]]
set fnList_psrr [lsort -dictionary [glob data/*psrr.csv*]]

plot av   $fnList_av   "Frequency (Hz)" "Voltage gain (dB)"
plot ph   $fnList_ph   "Frequency (Hz)" "Phase (°)"
plot cmrr $fnList_cmrr "Frequency (Hz)" "CMRR (dB)"
plot psrr $fnList_psrr "Frequency (Hz)" "PSRR (dB)"
