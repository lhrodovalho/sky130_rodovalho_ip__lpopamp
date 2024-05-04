v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 320 -580 360 -580 { lab=out}
N 320 -680 320 -580 { lab=out}
N 320 -680 580 -680 { lab=out}
N 580 -680 580 -550 { lab=out}
N 540 -550 580 -550 { lab=out}
N 320 -460 360 -460 { lab=avdd}
N 320 -440 360 -440 { lab=avss}
N 320 -380 360 -380 { lab=en}
N 320 -360 360 -360 { lab=enb}
N 320 -320 360 -320 { lab=ibias}
N 780 -550 820 -550 { lab=out}
N 580 -550 620 -550 { lab=out}
N 80 -120 80 -100 { lab=avss}
N 80 -200 80 -180 { lab=GND}
N 240 -120 240 -100 { lab=avss}
N 80 -100 240 -100 { lab=avss}
N 80 -200 160 -200 { lab=GND}
N 240 -200 320 -200 { lab=avdd}
N 240 -100 320 -100 { lab=avss}
N 160 -200 160 -180 { lab=GND}
N 240 -200 240 -180 { lab=avdd}
N 1040 -360 1040 -340 { lab=avss}
N 480 -200 560 -200 { lab=en}
N 480 -200 480 -180 { lab=en}
N 640 -120 640 -100 { lab=avss}
N 640 -200 720 -200 { lab=enb}
N 640 -100 720 -100 { lab=avss}
N 640 -200 640 -180 { lab=enb}
N 480 -120 480 -100 { lab=avss}
N 480 -100 640 -100 { lab=avss}
N 800 -120 800 -100 { lab=ibias}
N 800 -200 880 -200 { lab=avdd}
N 800 -100 880 -100 { lab=ibias}
N 800 -200 800 -180 { lab=avdd}
N 620 -550 620 -520 { lab=out}
N 1040 -340 1120 -340 { lab=avss}
N 1000 -440 1040 -440 { lab=in}
N 1040 -440 1040 -420 { lab=in}
N 780 -360 780 -340 { lab=avss}
N 780 -340 860 -340 { lab=avss}
N 620 -460 620 -340 { lab=avss}
N 620 -340 780 -340 { lab=avss}
N 780 -460 780 -420 { lab=out_}
N 620 -550 780 -550 { lab=out}
N 780 -550 780 -520 { lab=out}
N 780 -440 820 -440 { lab=out_}
N 320 -520 360 -520 { lab=in}
N 320 -420 360 -420 { lab=avss}
C {devices/title.sym} 160 -40 0 0 {name=l6 author="Luis Henrique Rodovalho"}
C {sky130_rodovalho_ip__lpopamp.sym} 360 -300 0 0 {name=Xdut}
C {devices/lab_pin.sym} 320 -460 0 0 {name=lavdd1 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 320 -440 0 0 {name=lavss1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 320 -380 0 0 {name=len1 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 320 -360 0 0 {name=lenb1 sig_type=std_logic lab=enb}
C {devices/lab_pin.sym} 320 -320 0 0 {name=libias1 sig_type=std_logic lab=ibias}
C {devices/lab_pin.sym} 820 -550 0 1 {name=lout0 sig_type=std_logic lab=out}
C {devices/vsource.sym} 80 -150 0 0 {name=v_avss value=xavss}
C {devices/vsource.sym} 240 -150 0 0 {name=v_avdd value="dc \{xavdd\} ac \{xavdd_ac\}"}
C {devices/lab_pin.sym} 320 -200 0 1 {name=lavdd0 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 320 -100 0 1 {name=lavss0 sig_type=std_logic lab=avss}
C {devices/gnd.sym} 160 -180 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1040 -390 0 0 {name=v_in value="pulse(\{xvlo\} \{xvhi\} \{xtdel\} \{xtr\} \{xtr\} \{xpw\} \{xper\})"}
C {devices/vsource.sym} 480 -150 0 0 {name=v_en value=\{xen*xavdd\}}
C {devices/lab_pin.sym} 560 -200 0 1 {name=len0 sig_type=std_logic lab=en}
C {devices/vsource.sym} 640 -150 0 0 {name=v_enb value=\{(1-xen)*xavdd\}}
C {devices/lab_pin.sym} 720 -200 0 1 {name=len2 sig_type=std_logic lab=enb}
C {devices/lab_pin.sym} 720 -100 0 1 {name=lavss2 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 880 -200 0 1 {name=lavdd2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 880 -100 0 1 {name=libias0 sig_type=std_logic lab=ibias}
C {devices/isource.sym} 800 -150 0 0 {name=i_ibias value=\{xen*xibias\}}
C {devices/capa.sym} 620 -490 0 0 {name=CL
m=1
value=\{xcl\}}
C {devices/lab_pin.sym} 1120 -340 0 1 {name=lavss4 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1000 -440 0 0 {name=lin2 sig_type=std_logic lab=in}
C {devices/vsource.sym} 780 -390 0 0 {name=v_out value="dc \{xvout\} ac \{xvout_ac\}"}
C {devices/lab_pin.sym} 860 -340 0 1 {name=lavss5 sig_type=std_logic lab=avss}
C {devices/res.sym} 780 -490 0 0 {name=RL
value=\{xrl\}
m=1}
C {devices/lab_pin.sym} 820 -440 0 1 {name=lout_ sig_type=std_logic lab=out_}
C {devices/code_shown.sym} 80 -1030 0 0 {name=header only_toplevel=false value="
* Include SkyWater sky130 device models
.lib /usr/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.temp 25
"
}
C {devices/code_shown.sym} 960 -1030 0 0 {name=control only_toplevel=false value="
.option rshunt=1E12
.option method=Gear
.option noinit list opts klu
.param xtstart = 0
.param xtend   = \{xper\}
.param xtstep  = \{xper/100\}
.tran \{xtstep\} \{xtend\} \{xtstart\}
.control
  run
  plot in out

.endc
"}
C {devices/code_shown.sym} 640 -1030 0 0 {name=params only_toplevel=false value="
.param xavdd  = 3.3
.param xavss  = 0
.param xen    = 1
.param xvin   = \{xavdd/2\}
.param xvout  = \{xavdd/2\}

.param xavdd_ac = 0
.param xvin_ac  = 0
.param xvout_ac = 0

.param xibias = 10u

.param xcl    = 30p
.param xrl    = 5k

.param xamp  = \{10m\}
.param xvlo  = \{xavdd/2-xamp/2\}
.param xvhi  = \{xavdd/2+xamp/2\}
.param xper  = \{4u\}
.param xtdel = \{xper/4\}
.param xtr   = \{xper/1000\}
.param xpw   = \{xper/2-xtr\}
"}
C {devices/lab_pin.sym} 320 -520 0 0 {name=lin1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 320 -420 0 0 {name=lavss3 sig_type=std_logic lab=avss}
