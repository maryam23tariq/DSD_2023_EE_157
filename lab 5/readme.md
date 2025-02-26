### DSD_2023_EE_157  
Maryam Tariq  

### REPORT  
# Lab 5: Seven-Segment Display Using K-Maps  

## Tasks  
1. **Truth Table and K-Maps**  
   - Made a truth table for the seven-segment display.  
   - Used K-Maps to simplify the logic for segments (`A-G`).  

2. **SystemVerilog Coding**  
   - Structural Model  
   - Behavioral Model 

3. **Simulation in QuestaSim**  
   - Wrote testbench code 
   - Checked outputs to see if the correct numbers (`0-F`) appeared.  

4. **FPGA Implementation on Nexys A7**  
   - Loaded the design into Vivado.  
   - Mapped inputs (`a, b, c, d, s1, s2, s3`) to FPGA switches.  
   - Displayed numbers correctly on the seven-segment display.  

## How It Works  
- **Inputs (`a, b, c, d`)** → Choose a number (`0-F`).  
- **Outputs (`A-G`)** → Turn on the correct segments to show the number.  
- **Anodes (`AN0-AN7`)** → Select which display is active.  

## Tools Used  
- QuestaSim for simulation  
- Xilinx Vivado for FPGA programming  
- Nexys A7 FPGA board   