v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 540 -550 580 -550 { lab=out}
N 320 -460 360 -460 { lab=avdd}
N 320 -440 360 -440 { lab=avss}
N 320 -400 360 -400 { lab=en}
N 320 -380 360 -380 { lab=enb}
N 320 -340 360 -340 { lab=ibias}
N 780 -550 820 -550 { lab=out}
N 580 -550 620 -550 { lab=out}
N 80 -120 80 -100 { lab=avss}
N 80 -200 80 -180 { lab=GND}
N 240 -120 240 -100 { lab=avss}
N 80 -100 240 -100 { lab=avss}
N 80 -200 160 -200 { lab=GND}
N 240 -200 320 -200 { lab=avdd}
N 160 -200 160 -180 { lab=GND}
N 240 -200 240 -180 { lab=avdd}
N 1000 -360 1000 -340 { lab=cm}
N 560 -200 640 -200 { lab=en}
N 560 -200 560 -180 { lab=en}
N 720 -120 720 -100 { lab=avss}
N 720 -200 800 -200 { lab=enb}
N 720 -100 800 -100 { lab=avss}
N 720 -200 720 -180 { lab=enb}
N 560 -120 560 -100 { lab=avss}
N 560 -100 720 -100 { lab=avss}
N 880 -120 880 -100 { lab=ibias}
N 880 -200 960 -200 { lab=avdd}
N 880 -100 960 -100 { lab=ibias}
N 880 -200 880 -180 { lab=avdd}
N 620 -550 620 -520 { lab=out}
N 1000 -440 1000 -420 { lab=in}
N 780 -360 780 -340 { lab=cm}
N 620 -460 620 -340 { lab=cm}
N 620 -340 780 -340 { lab=cm}
N 780 -460 780 -420 { lab=out_}
N 620 -550 780 -550 { lab=out}
N 780 -550 780 -520 { lab=out}
N 780 -440 820 -440 { lab=out_}
N 320 -580 360 -580 { lab=im}
N 1240 -360 1240 -340 { lab=cm}
N 1240 -340 1400 -340 { lab=cm}
N 1400 -360 1400 -340 { lab=cm}
N 1280 -370 1360 -370 { lab=cm}
N 1320 -370 1320 -340 { lab=cm}
N 1280 -410 1360 -410 { lab=in}
N 1240 -480 1280 -480 { lab=ip}
N 1400 -480 1440 -480 { lab=im}
N 1320 -440 1320 -410 { lab=in}
N 1240 -480 1240 -420 { lab=ip}
N 1400 -480 1400 -420 { lab=im}
N 960 -440 1000 -440 { lab=in}
N 960 -340 1000 -340 { lab=cm}
N 400 -120 400 -100 { lab=avss}
N 400 -200 480 -200 { lab=cm}
N 400 -100 480 -100 { lab=avss}
N 400 -200 400 -180 { lab=cm}
N 780 -340 820 -340 { lab=cm}
N 1000 -340 1240 -340 { lab=cm}
N 1000 -440 1320 -440 { lab=in}
N 320 -520 360 -520 { lab=ip}
N 240 -100 400 -100 { lab=avss}
C {devices/title.sym} 160 -40 0 0 {name=l6 author="Luis Henrique Rodovalho"}
C {lpopampa.sym} 360 -320 0 0 {name=Xdut}
C {devices/lab_pin.sym} 320 -460 0 0 {name=lavdd1 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 320 -440 0 0 {name=lavss1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 320 -400 0 0 {name=len1 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 320 -380 0 0 {name=lenb1 sig_type=std_logic lab=enb}
C {devices/lab_pin.sym} 320 -340 0 0 {name=libias1 sig_type=std_logic lab=ibias}
C {devices/lab_pin.sym} 820 -550 0 1 {name=lout0 sig_type=std_logic lab=out}
C {devices/vsource.sym} 80 -150 0 0 {name=v_avss value=xavss}
C {devices/vsource.sym} 240 -150 0 0 {name=v_avdd value="dc \{xavdd\}"}
C {devices/lab_pin.sym} 320 -200 0 1 {name=lavdd0 sig_type=std_logic lab=avdd}
C {devices/gnd.sym} 160 -180 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1000 -390 0 0 {name=v_in value="dc \{xvin\}"}
C {devices/vsource.sym} 560 -150 0 0 {name=v_en value=\{xen*xavdd\}}
C {devices/lab_pin.sym} 640 -200 0 1 {name=len0 sig_type=std_logic lab=en}
C {devices/vsource.sym} 720 -150 0 0 {name=v_enb value=\{(1-xen)*xavdd\}}
C {devices/lab_pin.sym} 800 -200 0 1 {name=len2 sig_type=std_logic lab=enb}
C {devices/lab_pin.sym} 800 -100 0 1 {name=lavss2 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 960 -200 0 1 {name=lavdd2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 960 -100 0 1 {name=libias0 sig_type=std_logic lab=ibias}
C {devices/isource.sym} 880 -150 0 0 {name=i_ibias value=\{xen*xibias\}}
C {devices/capa.sym} 620 -490 0 0 {name=c_l
m=1
value=\{xcl\}}
C {devices/lab_pin.sym} 960 -440 0 0 {name=lin0 sig_type=std_logic lab=in}
C {devices/vsource.sym} 780 -390 0 0 {name=v_out value="dc \{xvout\} ac \{xvout_ac\}"}
C {devices/lab_pin.sym} 820 -340 0 1 {name=lcm3 sig_type=std_logic lab=cm}
C {devices/res.sym} 780 -490 0 0 {name=r_l
value=\{xrl\}
m=1}
C {devices/lab_pin.sym} 820 -440 0 1 {name=lout_ sig_type=std_logic lab=out_}
C {devices/lab_pin.sym} 320 -520 0 0 {name=lip1 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 320 -580 0 0 {name=lim1 sig_type=std_logic lab=im}
C {devices/vcvs.sym} 1240 -390 0 1 {name=e_ip value=\{xip\}}
C {devices/vcvs.sym} 1400 -390 0 0 {name=e_im value=\{xim\}}
C {devices/lab_pin.sym} 1280 -480 0 1 {name=lip0 sig_type=std_logic lab=ip}
C {devices/lab_pin.sym} 1440 -480 0 1 {name=lim0 sig_type=std_logic lab=im}
C {devices/lab_pin.sym} 960 -340 0 0 {name=lcm1 sig_type=std_logic lab=cm}
C {devices/vsource.sym} 400 -150 0 0 {name=v_cm value="\{xcm\}"}
C {devices/lab_pin.sym} 480 -200 0 1 {name=lcm0 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 480 -100 0 1 {name=lavss4 sig_type=std_logic lab=avss}
C {devices/code_shown.sym} 80 -1010 0 0 {name=header only_toplevel=false value="
* Include SkyWater sky130 device models
.lib "/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
.param mc_mm_switch=0
"
}
C {devices/code_shown.sym} 900 -1010 0 0 {name=control only_toplevel=false value="
.option gmin=1e-10
.option rshunt=1e10
.param xdc_initial = \{-0.2m\}
.param xdc_final   = \{ 0.2m\}
.param xdc_step    = \{(xdc_final-xdc_initial)/1000\}
.dc v_in \{xdc_initial\} \{xdc_final\} \{xdc_step\}
.control
  run
  let vi = v(ip)-v(im)
  let vo = v(out)
  let av = db(abs(deriv(vo)/deriv(vi)))
  plot vo vs vi
  plot av vs vo
.endc
"}
C {devices/code_shown.sym} 620 -1010 0 0 {name=params only_toplevel=false value="
.param xavdd  = 3.3
.param xavss  = 0
.param xcm    = 1.65
.param xvin   = 0
.param xvout  = 0

.param xen =  1
.param xip =  1
.param xim = -1

.param xavdd_ac = 0
.param xvin_ac  = 0
.param xvout_ac = 0

.param xibias = 10u

.param xci    = 1f
.param xri    = 1f
.param xlf    = 1T
.param xrf    = 1T
.param xcl    = 1T
.param xrl    = 1T
"}
