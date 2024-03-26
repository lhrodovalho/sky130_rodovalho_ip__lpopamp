v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 360 -570 400 -570 { lab=avdd}
N 360 -630 400 -630 { lab=ip}
N 360 -690 400 -690 { lab=im}
N 360 -550 400 -550 { lab=avss}
N 360 -510 400 -510 { lab=en}
N 360 -490 400 -490 { lab=enb}
N 360 -450 400 -450 { lab=bpa}
N 360 -430 400 -430 { lab=bpb}
N 360 -410 400 -410 { lab=bnb}
N 360 -390 400 -390 { lab=bna}
N 360 -330 400 -330 { lab=ypp}
N 360 -310 400 -310 { lab=ypm}
N 360 -290 400 -290 { lab=zpp}
N 360 -270 400 -270 { lab=zpm}
N 360 -210 400 -210 { lab=ynp}
N 360 -190 400 -190 { lab=ynm}
N 360 -170 400 -170 { lab=znp}
N 360 -150 400 -150 { lab=znm}
N 580 -660 620 -660 { lab=o}
N 100 -180 140 -180 { lab=ibias}
N 200 -180 240 -180 { lab=bnb}
N 100 -300 140 -300 { lab=ynm}
N 200 -300 240 -300 { lab=o}
N 100 -420 140 -420 { lab=ypm}
N 200 -420 240 -420 { lab=o}
N 360 -350 400 -350 { lab=xp}
N 360 -230 400 -230 { lab=xn}
C {devices/title.sym} 160 -40 0 0 {name=l6 author="Luis Henrique Rodovalho"}
C {devices/iopin.sym} 50 -530 2 1 {name=pavdd lab=avdd}
C {devices/iopin.sym} 50 -500 2 1 {name=pavss lab=avss}
C {devices/iopin.sym} 50 -780 2 1 {name=pip lab=ip}
C {devices/iopin.sym} 50 -750 2 1 {name=pim lab=im}
C {devices/iopin.sym} 50 -720 2 1 {name=po lab=o}
C {lpopamp_slice.sym} 400 -130 0 0 {name=xslice[1:0]}
C {devices/lab_pin.sym} 360 -570 0 0 {name=lavdd sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 360 -630 0 0 {name=lip sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 360 -690 0 0 {name=lim sig_type=std_logic lab=im}
C {devices/lab_pin.sym} 360 -550 0 0 {name=lavss sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 360 -510 0 0 {name=len_ sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 360 -490 0 0 {name=lenb sig_type=std_logic lab=enb}
C {devices/lab_pin.sym} 360 -450 0 0 {name=lbpa sig_type=std_logic lab=bpa}
C {devices/lab_pin.sym} 360 -430 0 0 {name=lbpb sig_type=std_logic lab=bpb}
C {devices/lab_pin.sym} 360 -410 0 0 {name=lbnb sig_type=std_logic lab=bnb}
C {devices/lab_pin.sym} 360 -390 0 0 {name=lbna sig_type=std_logic lab=bna}
C {devices/lab_pin.sym} 360 -330 0 0 {name=lypp sig_type=std_logic lab=ypp}
C {devices/lab_pin.sym} 360 -310 0 0 {name=lypm sig_type=std_logic lab=ypm}
C {devices/lab_pin.sym} 360 -290 0 0 {name=lzpp sig_type=std_logic lab=zpp}
C {devices/lab_pin.sym} 360 -270 0 0 {name=lzpm sig_type=std_logic lab=zpm}
C {devices/lab_pin.sym} 360 -210 0 0 {name=lynp sig_type=std_logic lab=ynp}
C {devices/lab_pin.sym} 360 -190 0 0 {name=lynm sig_type=std_logic lab=ynm}
C {devices/lab_pin.sym} 360 -170 0 0 {name=lznp sig_type=std_logic lab=znp}
C {devices/lab_pin.sym} 360 -150 0 0 {name=lznm sig_type=std_logic lab=znm}
C {devices/iopin.sym} 50 -660 2 1 {name=pibias lab=ibias}
C {devices/lab_pin.sym} 620 -660 0 1 {name=lo sig_type=std_logic lab=o}
C {devices/iopin.sym} 50 -610 2 1 {name=pena lab=en}
C {devices/lab_pin.sym} 100 -180 0 0 {name=libias  lab=ibias type=std_logic}
C {devices/lab_pin.sym} 240 -180 0 1 {name=lbnb0  lab=bnb type=std_logic}
C {devices/iopin.sym} 50 -580 2 1 {name=penb lab=enb}
C {devices/lab_pin.sym} 100 -300 0 0 {name=lynm0 lab=ynm type=std_logic}
C {devices/lab_pin.sym} 240 -300 0 1 {name=lo0  lab=o type=std_logic}
C {devices/lab_pin.sym} 100 -420 0 0 {name=lypm0 lab=ypm type=std_logic}
C {devices/lab_pin.sym} 240 -420 0 1 {name=lo2  lab=o type=std_logic}
C {devices/res.sym} 170 -180 3 0 {name=ralias_ibias
value=1
m=1}
C {devices/lab_pin.sym} 360 -350 0 0 {name=lxp sig_type=std_logic lab=xp}
C {devices/lab_pin.sym} 360 -230 0 0 {name=lxn sig_type=std_logic lab=xn}
C {sky130_fd_pr/cap_mim_m3_1.sym} 170 -420 1 0 {name=Cp model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 170 -300 1 0 {name=Cn model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
