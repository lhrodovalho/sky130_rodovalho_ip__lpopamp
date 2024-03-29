# Proposal for IP block development for the Efabless 2024 Chipalooza challenge

**IP Block name:**        Low power operational amplifier  
**Designer/Design Team:** Luis Henrique Rodovalho  
**Date:**                 March 1, 2024  

## Circuit description:
The proposed circuit is a rail-to-rail input/output class AB general purpose amplifier designed for SkyWater 130 nm process technology. The circuit should performance should pass the specifications shown in the following table:

| Parameter                           | Min | Typical | Max      | Unit   | Notes                                     |
| ----------------------------------- | --- | ------- | -------- | ------ | ----------------------------------------- |
| Operating Temperature               | -40 |      25 |       85 |     °C |                                           |
| Load Resistance                     |   5 |         |          |   kOhm |                                           |
| Load Capacitance                    |     |         |       30 |     pF |                                           |
| Total Harmonic Distortion.          |     |     0.1 |      0.5 |      % | At nominal output power                   |
| Signal-to-Noise Ratio               |  90 |     100 |      110 |     dB |                                           |
| Output Voltage Swing                | 100 |         | avdd-100 |     mV | At 5 kOhms maximum load                   |
| Output Voltage Swing.               |  10 |         |  avdd-10 |     mV | At 50 kOhms load                          |
| Power Consumption (Enabled)         |     |         |      1.8 |     mA | At 5 kOhms maximum load                   |
| Power Consumption (No load)         |     |         |      300 |     uA |                                           |
| Power Consumption (Disabled).       |     |       1 |       10 |     nA |                                           |
| PSRR (Power Supply Rejection Ratio) |  70 |      80 |          |     dB |                                           |
| CMRR (Common mode Rejection Ratio)  |  80 |         |          |     dB |                                           |
| Gain Bandwidth Product.             |     |     2.5 |          |    MHz |                                           |
| Open loop gain                      |     |     100 |          |     dB |                                           |
| Phase margin                        |     |      70 |          |      ° |                                           |
| Wakeup time (ena transition 0 to 1) |     |     600 |          |     ns |                                           |
| Common-mode input voltage           |   0 |         |     avdd |      V | Rail-to-rail operation                    |
| Equivalent Input Noise              |     |         |       30 | nV/√Hz | At 4kOhms maximum load, measured at 10kHz |



## Circuit pinout:

| Pinout | Pin name                         | Use         |
| ------ | -------------------------------- | ----------- |
| avdd   | analog power                     | 3.3-5.5V    |
| avss   | analog ground                    |             |
| en     | enable                           | avdd domain |
| enb    | enable not                       | avdd domain |
| ibias  | bandgap-controlled current bias  | 10u         |
| im     | negative input                   |             |
| ip     | positive input                   |             |
| out    | output voltage                   |             |

## Circuit architecture:
The chosen operational amplifier topology is based on the class AB amplifier published in [1], also designed for the SkyWater 130 nm process by the author of this proposal. The main difference is that the proposed amplifier will use a double gate-driven differential pair, as in the original article by Hogervorst in 1994 [2].

## Specification challenges:
The chosen topology rail-to-rail operation is relatively easy, as there is no need for constant bandwidth for the full range common-mode input voltage. No input voltage offset was requested, so the major area constraint specification will be dictated by the transistors flicker noise.

The biggest constraint resulting from the demanded specifications is the minimum voltage supply. The amplifier should be able to use only 300 uA no load, and 1.8 mA with a 5 kOhm maximum load. The main limitation of the class AB output stage is the supply voltage needed to deliver an excess current of 1.5 mA and still function properly with a 3.0 V minimum voltage supply for SS corner at -40 °C.

## Testbenches required for verifying circuit performance:
The simulation testbenches cover mostly DC and AC performance characterization (DC gain, input and output range, power consumption, output current, bandwidth, phase margin, PSRR, CMRR, input referred noise), and transient ones (THD, slew-rate). All those simulation testbenches are available at the original article’s repository [1], based on the diagram available at [3]. 

## Connections required for standalone (breakout) implementation:
The actual circuit input pins should be located as close as possible to the pads. The parasitic input current is mostly composed of the ESD protection. The output current can be quite high, so extra care must be taken for the output node and the supply nets of the output stage.

Current consumption measurements are only possible if the circuit has a dedicated power supply pin. If the circuit is working as intended, the current consumption can be inferred by the biasing current, which certainly will be measured from the on-chip standalone current bias generator. ATB points could be inserted to measure the biasing voltages, but are not strictly necessary.

## Test plan for standalone (breakout) implementation:
The proposed circuit, an operational amplifier, can be tested in most university labs, with conventional oscilloscopes. The proposed circuit specifications do not require high speed, ultra-low-noise, and ultra-low-current measurement equipment. Detailed measurement guidelines can be found in Analog Devices tutorials [4], among many other references.

## References
[1]: Rodovalho, Luis Henrique, Cesar Ramos Rodrigues, and Orazio Aiello. "Rail-to-rail input/output bulk driven class AB operational amplifier with improved composite transistors." Analog Integrated Circuits and Signal Processing (2023): 1-13. DOI: https://doi.org/10.1007/s10470-023-02160-0  
[2]: Hogervorst, Ron, et al. "A compact power-efficient 3 V CMOS rail-to-rail input/output operational amplifier for VLSI cell libraries." IEEE journal of solid-state circuits 29.12 (1994): 1505-1513. DOI: https://doi.org/10.1109/ISSCC.1994.344656  
[3]: Ian Williams. “Designing with a complete simulation test bench for op amps, Part 2: Small-signal bandwidth”. Electrical Design News. Online: https://www.edn.com/designing-with-a-complete-simulation-test-bench-for-op-amps-part-2-small-signal-bandwidth/  
[4]: Zumbahlen, Hank, ed. Linear circuit design handbook. Newnes, 2011. https://www.analog.com/media/en/training-seminars/design-handbooks/Op-Amp-Applications/Section1.pdf  


