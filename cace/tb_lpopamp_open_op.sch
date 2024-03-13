v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 360 -580 400 -580 { lab=out}
N 580 -550 620 -550 { lab=out}
N 360 -460 400 -460 { lab=avdd}
N 360 -440 400 -440 { lab=avss}
N 360 -400 400 -400 { lab=en}
N 360 -380 400 -380 { lab=enb}
N 360 -340 400 -340 { lab=ibias}
N 660 -550 700 -550 { lab=out}
N 620 -550 660 -550 { lab=out}
N 80 -120 80 -100 { lab=#net1}
N 80 -200 80 -180 { lab=GND}
N 240 -120 240 -100 { lab=#net1}
N 80 -100 240 -100 { lab=#net1}
N 80 -200 160 -200 { lab=GND}
N 240 -200 320 -200 { lab=avdd}
N 160 -200 160 -180 { lab=GND}
N 240 -200 240 -180 { lab=avdd}
N 400 -200 480 -200 { lab=en}
N 400 -200 400 -180 { lab=en}
N 560 -120 560 -100 { lab=avss}
N 560 -200 640 -200 { lab=enb}
N 560 -100 640 -100 { lab=avss}
N 560 -200 560 -180 { lab=enb}
N 400 -120 400 -100 { lab=avss}
N 400 -100 560 -100 { lab=avss}
N 720 -120 720 -100 { lab=ibias}
N 720 -200 800 -200 { lab=avdd}
N 720 -100 800 -100 { lab=ibias}
N 720 -200 720 -180 { lab=avdd}
N 660 -550 660 -520 { lab=out}
N 660 -440 700 -440 { lab=avss}
N 660 -460 660 -440 { lab=avss}
N 220 -520 220 -480 { lab=ip}
N 180 -520 220 -520 { lab=ip}
N 220 -520 400 -520 { lab=ip}
N 220 -420 220 -400 { lab=avss}
N 180 -400 220 -400 { lab=avss}
N 360 -680 360 -580 { lab=out}
N 360 -680 620 -680 { lab=out}
N 620 -680 620 -550 { lab=out}
C {devices/title.sym} 160 -40 0 0 {name=l6 author="Luis Henrique Rodovalho"}
C {sky130_rodovalho_ip__lpopamp.sym} 400 -320 0 0 {name=Xdut}
C {devices/lab_pin.sym} 360 -460 0 0 {name=lavdd1 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 360 -440 0 0 {name=lavss1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 360 -400 0 0 {name=len1 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 360 -380 0 0 {name=lenb1 sig_type=std_logic lab=enb}
C {devices/lab_pin.sym} 360 -340 0 0 {name=libias1 sig_type=std_logic lab=ibias}
C {devices/lab_pin.sym} 700 -550 0 1 {name=lout0 sig_type=std_logic lab=out}
C {devices/vsource.sym} 80 -150 0 0 {name=v_avss value=0}
C {devices/vsource.sym} 240 -150 0 0 {name=v_avdd value="dc \{xavdd\}"}
C {devices/lab_pin.sym} 320 -200 0 1 {name=lavdd0 sig_type=std_logic lab=avdd}
C {devices/gnd.sym} 160 -180 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 400 -150 0 0 {name=v_en value=\{xavdd\}}
C {devices/lab_pin.sym} 480 -200 0 1 {name=len0 sig_type=std_logic lab=en}
C {devices/vsource.sym} 560 -150 0 0 {name=v_enb value=0}
C {devices/lab_pin.sym} 640 -200 0 1 {name=len2 sig_type=std_logic lab=enb}
C {devices/lab_pin.sym} 640 -100 0 1 {name=lavss2 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 800 -200 0 1 {name=lavdd2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 800 -100 0 1 {name=libias0 sig_type=std_logic lab=ibias}
C {devices/isource.sym} 720 -150 0 0 {name=i_ibias value=xibias}
C {devices/capa.sym} 660 -490 0 0 {name=c_l
m=1
value=\{xcl\}}
C {devices/lab_pin.sym} 700 -440 0 1 {name=lcm3 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 180 -520 0 0 {name=lip1 sig_type=std_logic lab=ip}
C {devices/code_shown.sym} 80 -830 0 0 {name=header only_toplevel=false value="
* Include SkyWater sky130 device models
.lib "/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
.param mc_mm_switch=0
.temp 25
"
}
C {devices/code_shown.sym} 1000 -830 0 0 {name=control only_toplevel=false value="
.option gmin=1e-12
.option rshunt=1e12
.control
  op
  let idd = op.i(v_avdd) 
  set wr_singlescale
  wrdata \{simpath\}/\{filename\}_\{N\}.data idd
  quit
.endc
"}
C {devices/code_shown.sym} 780 -830 0 0 {name=params only_toplevel=false value="
.param xavdd  = 3.3
.param xvin   = 1.65

.param xibias = 10u
.param xcl    = 30p
"}
C {devices/vsource.sym} 220 -450 0 0 {name=v_ip value="dc xvin"}
C {devices/lab_pin.sym} 180 -400 0 0 {name=lavss3 sig_type=std_logic lab=avss}
