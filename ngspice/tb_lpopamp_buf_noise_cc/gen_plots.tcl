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
    puts $fp "'../${fn}' using 3:4 with lines lt rgb 'blue',\\"
  }
  close $fp
  cd plots
  exec gnuplot ${name}.gnplot
  cd ..
}

set fnList [lsort -dictionary [glob data/*.csv*]]

plot noise $fnList "Frequency (Hz)" "IRN (V/sqrt(freq))"

