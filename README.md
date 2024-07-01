# MiniBMS

MiniBMS is a Simulink model designed to simulate a simple battery management system (BMS) for electric vehicles. The model incorporates a range of functionalities essential for efficient battery management, ensuring the safety and reliability of electric vehicle operations.

## Project Components
| File | Purpose |
| ---  | --- |
|MiniBMS.slx|The main model containing the battery and BMS simulation.|
|BMSLib.slx|Library used in MiniBMS.slx.|
|MiniBMSVariables.m|Script containing the definitions of various parameters used in MiniBMS.slx.|

## Features

1. **State of Charge (SoC) Calculation**: Uses coulomb counting to accurately determine the battery's state of charge.
2. **Battery Capacity and Energy Calculation**: Computes the total capacity and energy available in the battery pack.
3. **Fault Detection**: Identifies faults in the system, including temperature, voltage, and contactor issues.
4. **Voltage Monitoring**: Continuously tracks the voltage levels of the battery cells.
5. **Temperature Monitoring**: Monitors the temperature of the battery cells to prevent overheating and ensure optimal performance.
6. **BMS State Management**: Manages the various states of the BMS, ensuring proper operation and response to different conditions.
7. **Contactor Control**: Controls the contactors to manage the connection and disconnection of the battery pack.

## Model Specifications

- **Battery Configuration**: The BMS is designed for a battery pack consisting of 3 Li-Ion cells connected in series.
- **Battery Modelling**: Utilizes tables of open circuit voltage (OCV) vs. SoC data and internal resistance vs. temperature data to simulate the battery behavior.

## Usage

To use MiniBMS, add the BMSLib.slx library to your MATLAB path and load the MiniBMS.slx model. The MiniBMSVariables.m script provides necessary parameter definitions and should be run before starting the simulation. The model was developed in MATLAB version R2018b and thus may not work in earlier versions.

## User Interaction

- **Ignition and Charger Control**: Users can turn on the ignition or connect the charger using interactive switches during the simulation run.
- **Current and Temperature Control**: Users can adjust the current and temperature settings using sliders, which influence the simulated battery voltage monitored by the BMS.

## Demo

### Idle Mode

The BMS starts in IDLE mode.

![Idle](/Demo/Idle.PNG)

### Discharge Mode

If the ignition is switched on and there are no faults, the BMS transitions to DISCHARGE mode.

![Discharge](/Demo/Discharge.PNG)

### Fault During Discharge

If a fault occurs during discharge, the BMS reverts to IDLE mode. It won't restart until the fault is resolved and the ignition is switched off and then on.
During discharge if there is a fault the BMS falls back to IDLE mode and won't restart until the fault is healed and the ignition is switched off and then on.

![Fault in discharge](/Demo/DischargeFault.PNG)

### Charge Mode
When the charge plug is connected, the BMS transitions to CHARGE mode, even if the ignition is on. Ensure the current value is set to negative; otherwise, the battery will discharge.
![Charge](/Demo/Charge.PNG)

### Fault During Charge
If a fault occurs during charging, the BMS stops operation. It will only resume if the fault is resolved and the plug is reconnected.

![Fault in charge](/Demo/ChargeFault.PNG)
