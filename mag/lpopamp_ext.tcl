flatten lpopamp
load lpopamp
save
select top cell
extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 1.0
ext2spice extresist on
ext2spice
exec mv lpopamp.spice lpopamp.rcc.spice
exec gzip lpopamp.rcc.spice
ext2spice extresist off
ext2spice
exec mv lpopamp.spice lpopamp.cc.spice
exec gzip lpopamp.cc.spice
exec gzip lpopamp.mag

