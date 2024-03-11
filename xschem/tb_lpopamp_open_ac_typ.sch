v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 360 -580 400 -580 { lab=im_}
N 580 -550 620 -550 { lab=out}
N 360 -460 400 -460 { lab=avdd}
N 360 -440 400 -440 { lab=avss}
N 360 -400 400 -400 { lab=en}
N 360 -380 400 -380 { lab=enb}
N 360 -340 400 -340 { lab=ibias}
N 660 -550 700 -550 { lab=out}
N 620 -550 660 -550 { lab=out}
N 80 -120 80 -100 { lab=avss}
N 80 -200 80 -180 { lab=GND}
N 240 -120 240 -100 { lab=avss}
N 80 -100 240 -100 { lab=avss}
N 80 -200 160 -200 { lab=GND}
N 240 -200 320 -200 { lab=avdd}
N 160 -200 160 -180 { lab=GND}
N 240 -200 240 -180 { lab=avdd}
N 640 -200 720 -200 { lab=en}
N 640 -200 640 -180 { lab=en}
N 800 -120 800 -100 { lab=avss}
N 800 -200 880 -200 { lab=enb}
N 800 -100 880 -100 { lab=avss}
N 800 -200 800 -180 { lab=enb}
N 640 -120 640 -100 { lab=avss}
N 640 -100 800 -100 { lab=avss}
N 960 -120 960 -100 { lab=ibias}
N 960 -200 1040 -200 { lab=avdd}
N 960 -100 1040 -100 { lab=ibias}
N 960 -200 960 -180 { lab=avdd}
N 660 -550 660 -520 { lab=out}
N 320 -760 360 -760 { lab=im_}
N 60 -760 100 -760 { lab=im}
N 480 -120 480 -100 { lab=avss}
N 480 -200 560 -200 { lab=cm}
N 480 -100 560 -100 { lab=avss}
N 480 -200 480 -180 { lab=cm}
N 360 -760 400 -760 { lab=im_}
N 320 -580 360 -580 { lab=im_}
N 660 -440 700 -440 { lab=cm}
N 240 -100 480 -100 { lab=avss}
N 360 -760 360 -660 { lab=im_}
N 620 -760 620 -550 { lab=out}
N 360 -660 360 -580 { lab=im_}
N 660 -460 660 -440 { lab=cm}
N 460 -760 620 -760 { lab=out}
N 220 -520 220 -480 { lab=ip}
N 180 -520 220 -520 { lab=ip}
N 220 -520 400 -520 { lab=ip}
N 100 -420 100 -400 { lab=avss}
N 100 -400 220 -400 { lab=avss}
N 220 -420 220 -400 { lab=avss}
N 100 -760 100 -480 { lab=im}
N 100 -760 260 -760 { lab=im}
N 60 -400 100 -400 { lab=avss}
C {devices/title.sym} 160 -40 0 0 {name=l6 author="Luis Henrique Rodovalho"}
C {lpopamp.sym} 400 -320 0 0 {name=Xdut}
C {devices/lab_pin.sym} 360 -460 0 0 {name=lavdd1 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 360 -440 0 0 {name=lavss1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 360 -400 0 0 {name=len1 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 360 -380 0 0 {name=lenb1 sig_type=std_logic lab=enb}
C {devices/lab_pin.sym} 360 -340 0 0 {name=libias1 sig_type=std_logic lab=ibias}
C {devices/lab_pin.sym} 700 -550 0 1 {name=lout0 sig_type=std_logic lab=out}
C {devices/vsource.sym} 80 -150 0 0 {name=v_avss value=xavss}
C {devices/vsource.sym} 240 -150 0 0 {name=v_avdd value="dc \{xavdd\} ac \{xavdd_ac\}"}
C {devices/lab_pin.sym} 320 -200 0 1 {name=lavdd0 sig_type=std_logic lab=avdd}
C {devices/gnd.sym} 160 -180 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 640 -150 0 0 {name=v_en value=\{xen*xavdd\}}
C {devices/lab_pin.sym} 720 -200 0 1 {name=len0 sig_type=std_logic lab=en}
C {devices/vsource.sym} 800 -150 0 0 {name=v_enb value=\{(1-xen)*xavdd\}}
C {devices/lab_pin.sym} 880 -200 0 1 {name=len2 sig_type=std_logic lab=enb}
C {devices/lab_pin.sym} 880 -100 0 1 {name=lavss2 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1040 -200 0 1 {name=lavdd2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1040 -100 0 1 {name=libias0 sig_type=std_logic lab=ibias}
C {devices/isource.sym} 960 -150 0 0 {name=i_ibias value=\{xen*xibias\}}
C {devices/capa.sym} 660 -490 0 0 {name=c_l
m=1
value=\{xcl\}}
C {devices/lab_pin.sym} 700 -440 0 1 {name=lcm3 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 180 -520 0 0 {name=lip1 sig_type=std_logic lab=ip}
C {devices/capa.sym} 290 -760 1 0 {name=c_i m=1
value=\{xci\}}
C {devices/ind.sym} 430 -760 1 0 {name=l_f
m=1
value=\{xlf\}}
C {devices/lab_pin.sym} 60 -760 0 0 {name=lim1 sig_type=std_logic lab=im}
C {devices/vsource.sym} 480 -150 0 0 {name=v_cm value="\{xcm\}"}
C {devices/lab_pin.sym} 560 -200 0 1 {name=lcm0 sig_type=std_logic lab=cm}
C {devices/lab_pin.sym} 560 -100 0 1 {name=lavss4 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 320 -580 0 0 {name=lim_ sig_type=std_logic lab=im_}
C {devices/code_shown.sym} 80 -1010 0 0 {name=header only_toplevel=false value="
* Include SkyWater sky130 device models
.lib "/usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt
.param mc_mm_switch=0
.temp 25
"
}
C {devices/code_shown.sym} 1000 -1010 0 0 {name=control only_toplevel=false value="
.option gmin=1e-12
.option rshunt=1e12
.control
  * differential input
  alter v_ip   ac=0
  alter v_im   ac=1
  alter v_avdd ac=0

  op
  ac dec 10 10m 10G

  * common-mode input
  alter v_ip   ac=1
  alter v_im   ac=1
  alter v_avdd ac=0

  ac dec 10 10m 10G

  * power supply
  alter v_ip   ac=0
  alter v_im   ac=0
  alter v_avdd ac=1

  ac dec 10 10m 10G

  let idd = op.i(v_avdd) 
  let av = db(ac1.out)
  let ph = cphase(ac1.out)*180/(4*atan(1))
  let cmrr = db(ac1.out/ac2.out)
  let psrr = db(ac1.out/ac3.out)

  meas ac av0p1hz find av at=0.1
  meas ac gbw when av=0
  meas ac pm180 when ph=-180
  meas ac pm find ph at=gbw
  meas ac gm find av at=pm180

  meas ac cmrr0p1hz find cmrr at=0.1
  meas ac psrr0p1hz find psrr at=0.1

  plot av cmrr psrr
  plot ph
  print idd
.endc
"}
C {devices/code_shown.sym} 780 -1010 0 0 {name=params only_toplevel=false value="
.param xavdd  = 3.3
.param xavss  = 0
.param xcm    = 1.65
.param xvin   = 0
.param xvout  = 0

.param xen =  1
.param xip =  0
.param xim =  1

.param xavdd_ac = 0
.param xvin_ac  = 1
.param xvout_ac = 0

.param xibias = 10u

.param xci    = 1T
.param xri    = 1T
.param xlf    = 1T
.param xrf    = 1f
.param xcl    = 30p
.param xrl    = 5k
"}
C {devices/vsource.sym} 100 -450 0 0 {name=v_im value="dc \{xavdd/2\}"}
C {devices/vsource.sym} 220 -450 0 0 {name=v_ip value="dc \{xavdd/2\}"}
C {devices/lab_pin.sym} 60 -400 0 0 {name=lavss3 sig_type=std_logic lab=avss}
