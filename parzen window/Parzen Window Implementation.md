## Converting a mathematical polynomial algorithim into synchronous, fixed-point pipelined FPGA Hardware

## parzen window
Parzen window applies a set of weights to a sequence of samples. Defined through a piecewise polynomial equation.
Output coefficient depends on:
- n = position/sample index
- N = total window length 

<img width="1012" height="847" alt="image" src="https://github.com/user-attachments/assets/e0bc9baa-80b6-4a57-89e4-52ae6b7cb96e" />

Part of the FPGA will dedicate circuitury to that specific function.
Both cases of the formula need to be implemented on the FPGA at the same time in parallel, Circuitry will be allocated for each case.
Using a MUX to choose between each case.

##Breaking the algorithim down to influence design choses


<img width="372" height="195" alt="image" src="https://github.com/user-attachments/assets/44fa9fde-c9af-4e1a-8454-11a06e6a4ce9" />

1. Both cases of the formula need to be implemented on the FPGA at the same time in parallel, Circuitry will be allocated for each case.
Using a MUX to choose between each case.
2. Assuming N is a power of 2 allows divisions involving N/2 to be implementes efficiently using binary bit shifts rather than hardware division.

<img width="552" height="137" alt="image" src="https://github.com/user-attachments/assets/877167c2-7f60-4b17-b6a2-8a9eb461198e" />
calculate in FPGA and reuse.

Equation becomes:

<img width="495" height="293" alt="image" src="https://github.com/user-attachments/assets/9d2a5fca-54f2-4e0e-9257-bd3120cd151b" />
